`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2025 17:57:32
// Design Name: 
// Module Name: verctor_reverse
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vectore_reverse_tb #(parameter MSB = 5) (

    );
reg clk;
reg rst;
reg load;
reg [MSB-1:0] in ;
wire [MSB-1:0] out;

example DUT  (.clk(clk),
             .rst(rst),
             .load(load),
             .in(in),
             .out(out));
             
always #5 clk =~clk;

initial 
begin
clk = 0;
rst =1;
load = 0;
in = 0;
#20
rst =0;
in = 5'b11001;
#20
load = 1;


end


endmodule
