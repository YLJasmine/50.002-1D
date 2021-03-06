/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift8_28 (
    input [7:0] a,
    input [2:0] b,
    input [1:0] alufn,
    output reg [7:0] shift
  );
  
  
  
  reg [7:0] xa;
  
  reg [7:0] x;
  
  reg [7:0] y;
  
  reg [7:0] z;
  
  reg r;
  
  integer i;
  
  always @* begin
    if (alufn[0+0-:1] == 1'h1) begin
      for (i = 1'h0; i < 4'h8; i = i + 1) begin
        xa[(i)*1+0-:1] = a[(3'h7 - i)*1+0-:1];
      end
    end else begin
      xa = a;
    end
    if (alufn[1+0-:1] == 1'h1) begin
      r = a[7+0-:1];
    end else begin
      r = 1'h0;
    end
    if (b[2+0-:1] == 1'h1) begin
      for (i = 1'h0; i < 3'h4; i = i + 1) begin
        x[(i)*1+0-:1] = r;
      end
      for (i = 3'h4; i < 4'h8; i = i + 1) begin
        x[(i)*1+0-:1] = xa[(i - 3'h4)*1+0-:1];
      end
    end else begin
      x = xa;
    end
    if (b[1+0-:1] == 1'h1) begin
      for (i = 1'h0; i < 2'h2; i = i + 1) begin
        y[(i)*1+0-:1] = r;
      end
      for (i = 2'h2; i < 4'h8; i = i + 1) begin
        y[(i)*1+0-:1] = x[(i - 2'h2)*1+0-:1];
      end
    end else begin
      y = x;
    end
    if (b[0+0-:1] == 1'h1) begin
      for (i = 1'h1; i < 4'h8; i = i + 1) begin
        z[(i)*1+0-:1] = r;
      end
      z[0+0-:1] = r;
      for (i = 1'h1; i < 4'h8; i = i + 1) begin
        z[(i)*1+0-:1] = y[(i - 1'h1)*1+0-:1];
      end
    end else begin
      z = y;
    end
    if (alufn[0+0-:1] == 1'h1) begin
      for (i = 1'h0; i < 4'h8; i = i + 1) begin
        shift[(i)*1+0-:1] = z[(3'h7 - i)*1+0-:1];
      end
    end else begin
      shift = z;
    end
  end
endmodule
