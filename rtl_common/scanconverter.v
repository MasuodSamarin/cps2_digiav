//
// Copyright (C) 2016-2020  Markus Hiienkari <mhiienka@niksula.hut.fi>
//
// This file is part of CPS2 Digital AV Interface project.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

module scanconverter #(
    parameter CPS_FADE = 1
  ) (
    input PCLK_CAP_i,
    input PCLK_OUT_i,
    input reset_n,
    input [15:0] DATA_i,
    input HSYNC_i,
    input VSYNC_i,
    input DE_i,
    input FID_i,
    input frame_change_i,
    input [8:0] xpos_i,
    input [8:0] ypos_i,
    input [31:0] hv_out_config,
    input [31:0] hv_out_config2,
    input [31:0] hv_out_config3,
    input [31:0] xy_out_config,
    input [31:0] xy_out_config2,
    input [31:0] misc_config,
    input [31:0] sl_config,
    input [31:0] sl_config2,
    input testpattern_enable,
    output PCLK_o,
    output [7:0] R_o,
    output [7:0] G_o,
    output [7:0] B_o,
    output HSYNC_o,
    output VSYNC_o,
    output DE_o,
    output [10:0] xpos_o,
    output [10:0] ypos_o,
    output reg resync_strobe
);

localparam NUM_LINE_BUFFERS = 40;

localparam PP_PL_START          = 1;
localparam PP_LINEBUF_START     = PP_PL_START + 1;
localparam PP_LINEBUF_LENGTH    = 1;
localparam PP_FADE_START        = PP_LINEBUF_START + PP_LINEBUF_LENGTH;
localparam PP_FADE_LENGTH       = (CPS_FADE == 1) ? 2 : 0;
localparam PP_FADE_END          = PP_FADE_START + PP_FADE_LENGTH;
localparam PP_SLGEN_START       = PP_FADE_END;
localparam PP_SLGEN_LENGTH      = 1;
localparam PP_SLGEN_END         = PP_SLGEN_START + PP_SLGEN_LENGTH;
localparam PP_PL_END            = PP_SLGEN_END;

wire [11:0] H_TOTAL = hv_out_config[11:0];
wire [10:0] H_ACTIVE = hv_out_config[22:12];
wire [8:0] H_BACKPORCH = hv_out_config[31:23];
wire [8:0] H_SYNCLEN = hv_out_config2[8:0];

wire [10:0] V_TOTAL = hv_out_config2[19:9];
wire [10:0] V_ACTIVE = hv_out_config2[30:20];
wire [8:0] V_BACKPORCH = hv_out_config3[8:0];
wire [4:0] V_SYNCLEN = hv_out_config3[13:9];

wire [10:0] V_STARTLINE = hv_out_config3[24:14];

wire [10:0] V_STARTLINE_PREV = (V_STARTLINE == 0) ? (V_TOTAL-1) : (V_STARTLINE-1);

wire [10:0] X_SIZE = xy_out_config[10:0];
wire [10:0] Y_SIZE = xy_out_config[21:11];
wire signed [9:0] X_OFFSET = xy_out_config[31:22];
wire signed [8:0] Y_OFFSET = xy_out_config2[8:0];

wire [7:0] X_START_LB = xy_out_config2[16:9];
wire signed [5:0] Y_START_LB = xy_out_config2[22:17];

wire [2:0] X_RPT = xy_out_config2[25:23];
wire [2:0] Y_RPT = xy_out_config2[28:26];

wire [2:0] X_SKIP = xy_out_config2[31:29];

reg frame_change_sync1_reg, frame_change_sync2_reg, frame_change_prev;
wire frame_change = frame_change_sync2_reg;

reg [11:0] h_cnt;
reg [10:0] v_cnt;

reg [10:0] xpos_lb;
reg [10:0] ypos_lb;
reg [2:0] x_ctr;
reg [2:0] y_ctr;

reg [5:0] ypos_i_wraddr;
reg [8:0] ypos_i_prev;
reg [8:0] xpos_i_wraddr;
reg [15:0] DATA_i_wrdata;
reg DE_i_wren;

reg [15:0] DATA_linebuf_pp4;
reg [4:0] fade_mult_pp4;

// Pipeline registers
reg [7:0] R_pp[PP_FADE_END:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg [7:0] G_pp[PP_FADE_END:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg [7:0] B_pp[PP_FADE_END:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg HSYNC_pp[PP_PL_START:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg VSYNC_pp[PP_PL_START:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg DE_pp[PP_PL_START:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg [10:0] xpos_pp[PP_PL_START:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg [10:0] ypos_pp[PP_PL_START:PP_PL_END] /* synthesis ramstyle = "logic" */;
reg mask_enable_pp[PP_LINEBUF_START:PP_SLGEN_START] /* synthesis ramstyle = "logic" */;

reg [10:0] xpos_lb_start;

assign PCLK_o = PCLK_OUT_i;

wire [14:0] linebuf_wraddr = {ypos_i_wraddr, xpos_i_wraddr};
wire [14:0] linebuf_rdaddr = {ypos_lb[5:0], xpos_lb[8:0]};

wire [15:0] DATA_linebuf;

linebuf linebuf_rgb (
    .data(DATA_i_wrdata),
    .rdaddress(linebuf_rdaddr),
    .rdclock(PCLK_OUT_i),
    .wraddress(linebuf_wraddr),
    .wrclock(PCLK_CAP_i),
    .wren(DE_i_wren),
    .q(DATA_linebuf)
);

// Fade function for CPS1/2
function [7:0] apply_fade;
    input [3:0] data;
    input [4:0] fade_m;
    begin
        //apply_fade = {data, data} >> (3'h7-fade[3:1]);
        //apply_fade = {4'h0, data} * ({4'h0, fade} + 8'h2);
        apply_fade = {4'h0, data} * {3'h0, fade_m};
    end
endfunction

// Linebuffer write address calculation
always @(posedge PCLK_CAP_i) begin
    if (ypos_i == 0) begin
        ypos_i_wraddr <= 0;
    end else if (ypos_i != ypos_i_prev) begin
        if (ypos_i_wraddr == NUM_LINE_BUFFERS-1)
            ypos_i_wraddr <= 0;
        else
            ypos_i_wraddr <= ypos_i_wraddr + 1'b1;
    end

    xpos_i_wraddr <= xpos_i;
    ypos_i_prev <= ypos_i;
    DATA_i_wrdata <= DATA_i;
    DE_i_wren <= DE_i;
end


// Frame change strobe synchronization
always @(posedge PCLK_OUT_i) begin
    frame_change_sync1_reg <= frame_change_i;
    frame_change_sync2_reg <= frame_change_sync1_reg;
    frame_change_prev <= frame_change_sync2_reg;
end

// H/V counters
always @(posedge PCLK_OUT_i) begin
    if (~frame_change_prev & frame_change & ((v_cnt != V_STARTLINE_PREV) & (v_cnt != V_STARTLINE))) begin
        h_cnt <= 0;
        v_cnt <= V_STARTLINE;
        resync_strobe <= 1'b1;
    end else begin
        if (h_cnt == H_TOTAL-1) begin
            if (v_cnt == V_TOTAL-1) begin
                v_cnt <= 0;
                resync_strobe <= 1'b0;
            end else begin
                v_cnt <= v_cnt + 1'b1;
            end
            h_cnt <= 0;
        end else begin
            h_cnt <= h_cnt + 1'b1;
        end
    end
end

// Postprocess pipeline structure
// |    0     |    1     |    2    |    3    |    4    |    5    |
// |----------|----------|---------|---------|---------|---------|
// | SYNC/DE  |          |         |         |         |         |
// | X/Y POS  |          |         |         |         |         |
// |          |   MASK   |         |         |         |         |
// |          |          | LINEBUF |         |         |         |
// |          |          |         | (FADE)  | (FADE)  |         |
// |          |          |         |         |         |  SLGEN  |


// Pipeline stage 0
always @(posedge PCLK_OUT_i) begin
    HSYNC_pp[1] <= (h_cnt < H_SYNCLEN) ? 1'b0 : 1'b1;
    VSYNC_pp[1] <= (v_cnt < V_SYNCLEN) ? 1'b0 : 1'b1;
    DE_pp[1] <= (h_cnt >= H_SYNCLEN+H_BACKPORCH) & (h_cnt < H_SYNCLEN+H_BACKPORCH+H_ACTIVE) & (v_cnt >= V_SYNCLEN+V_BACKPORCH) & (v_cnt < V_SYNCLEN+V_BACKPORCH+V_ACTIVE);

    if (h_cnt == H_SYNCLEN+H_BACKPORCH) begin
        if (v_cnt == V_SYNCLEN+V_BACKPORCH) begin
            ypos_pp[1] <= 0;
            ypos_lb <= Y_START_LB;
            y_ctr <= 0;
            xpos_lb_start <= (X_OFFSET < 10'sd0) ? 11'd0 : {1'b0, X_OFFSET};
        end else begin
            if (ypos_pp[1] < V_ACTIVE) begin
                ypos_pp[1] <= ypos_pp[1] + 1'b1;
            end

            if (y_ctr == Y_RPT) begin
                if (ypos_lb == NUM_LINE_BUFFERS-1)
                    ypos_lb <= 0;
                else
                    ypos_lb <= ypos_lb + 1'b1;
                y_ctr <= 0;
            end else begin
                y_ctr <= y_ctr + 1'b1;
            end
        end
        xpos_pp[1] <= 0;
        xpos_lb <= X_START_LB;
        x_ctr <= 0;
    end else begin
        if (xpos_pp[1] < H_ACTIVE) begin
            xpos_pp[1] <= xpos_pp[1] + 1'b1;
        end

        if (xpos_pp[1] >= xpos_lb_start) begin
            if (x_ctr == X_RPT) begin
                xpos_lb <= xpos_lb + 1'b1 + X_SKIP;
                x_ctr <= 0;
            end else begin
                x_ctr <= x_ctr + 1'b1;
            end
        end
    end
end

// Pipeline stages 1-
integer pp_idx;
always @(posedge PCLK_OUT_i) begin

    for(pp_idx = PP_LINEBUF_START; pp_idx <= PP_PL_END; pp_idx = pp_idx+1) begin
        HSYNC_pp[pp_idx] <= HSYNC_pp[pp_idx-1];
        VSYNC_pp[pp_idx] <= VSYNC_pp[pp_idx-1];
        DE_pp[pp_idx] <= DE_pp[pp_idx-1];
        xpos_pp[pp_idx] <= xpos_pp[pp_idx-1];
        ypos_pp[pp_idx] <= ypos_pp[pp_idx-1];
    end

    if (($signed({1'b0, xpos_pp[PP_LINEBUF_START-1]}) >= X_OFFSET) &
        ($signed({1'b0, xpos_pp[PP_LINEBUF_START-1]}) < X_OFFSET+X_SIZE) &
        ($signed({1'b0, ypos_pp[PP_LINEBUF_START-1]}) >= Y_OFFSET) &
        ($signed({1'b0, ypos_pp[PP_LINEBUF_START-1]}) < Y_OFFSET+Y_SIZE))
    begin
        mask_enable_pp[PP_LINEBUF_START] <= 1'b0;
    end else begin
        mask_enable_pp[PP_LINEBUF_START] <= 1'b1;
    end
    for(pp_idx = PP_LINEBUF_START+1; pp_idx <= PP_SLGEN_START; pp_idx = pp_idx+1) begin
        mask_enable_pp[pp_idx] <= mask_enable_pp[pp_idx-1];
    end

    if (CPS_FADE == 1) begin
        DATA_linebuf_pp4 <= DATA_linebuf;
        fade_mult_pp4 <= {1'b0, DATA_linebuf[3:0]} + 5'h2;

        R_pp[PP_FADE_END] <= apply_fade(DATA_linebuf_pp4[15:12], fade_mult_pp4);
        G_pp[PP_FADE_END] <= apply_fade(DATA_linebuf_pp4[11:8], fade_mult_pp4);
        B_pp[PP_FADE_END] <= apply_fade(DATA_linebuf_pp4[7:4], fade_mult_pp4);

        R_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : R_pp[PP_SLGEN_START]);
        G_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : G_pp[PP_SLGEN_START]);
        B_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : B_pp[PP_SLGEN_START]);
    end else begin
        R_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : {DATA_linebuf[14:10], DATA_linebuf[14:12]});
        G_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : {DATA_linebuf[9:5], DATA_linebuf[9:7]});
        B_pp[PP_SLGEN_END] <= testpattern_enable ? (xpos_pp[PP_SLGEN_START] ^ ypos_pp[PP_SLGEN_START]) : (mask_enable_pp[PP_SLGEN_START] ? 8'h00 : {DATA_linebuf[4:0], DATA_linebuf[4:2]});
    end
end

// Output
assign R_o = R_pp[PP_PL_END];
assign G_o = G_pp[PP_PL_END];
assign B_o = B_pp[PP_PL_END];
assign HSYNC_o = HSYNC_pp[PP_PL_END];
assign VSYNC_o = VSYNC_pp[PP_PL_END];
assign DE_o = DE_pp[PP_PL_END];
assign xpos_o = xpos_pp[PP_PL_END];
assign ypos_o = ypos_pp[PP_PL_END];

endmodule