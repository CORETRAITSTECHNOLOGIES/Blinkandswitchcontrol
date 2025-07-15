`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2025 23:55:00
// Design Name: 
// Module Name: blink
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

module blink (
   input wire clk,
   input wire A,
   input wire B,
   input wire C, 
  output reg led ,
  output reg led_bR,
    output reg Led,
    output reg Ld
);

  reg [26:0] counter = 0; // log2(100 million) ≈ 27
  reg D = 0;
  always @(posedge clk) begin   
    if (counter == 100_000_000) begin  // 1 second delay
      counter <= 0;
      led <= ~led;
      led_bR <= ~led_bR;
      if(A == 1'b1) begin
      Led = 1'b1;
      end else begin
      Led = 1'b0;
      end
        D <= B&C;
    if(D  == 1'b1)begin
    Ld = 1'b1;
    end else begin
    Ld = 1'b0;
    end
    end else begin
      counter <= counter + 1;
    end
    
  
  end

endmodule