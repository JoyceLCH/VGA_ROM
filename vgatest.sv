module vgatest;
logic vga_clk, reset, clk_25M;
logic hsync, vsync;
// logic[23:0] colour_out;
logic[7:0] red,green,blue;
vga vga0(.*);

initial 
begin
reset = 1;
#50ns reset = 0;
#50ns reset = 1;
end

initial
begin
  vga_clk =  0;
  #5ns  forever #5ns vga_clk = ~vga_clk;
end


endmodule 