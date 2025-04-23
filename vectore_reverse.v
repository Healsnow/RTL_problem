`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2025 17:21:06
// Design Name: 
// Module Name: example
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


module vectore_reverse #(parameter MSB = 5)(

input clk,
input rst,
input load,
input [MSB-1:0] in ,

output reg [MSB-1:0]  out 
);

genvar i;
generate 
   for (i= 0; i< MSB-1; i=i+1)
   begin: loop
     always @ ( posedge clk)
     begin
        if ( rst)
         out <= 0;
        else
        
         begin
         if (load)
         
           out [MSB-1-i] <= in [0+i] ;
         else 
           out <= 5'b11111; 
         
         end 
         
     
     end
    end 
endgenerate
endmodule
