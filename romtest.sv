module romtest;
parameter picture_size = 6400; //153600
parameter width = 24;
parameter addrSize = 13;
//$clog2(picture_size);

logic clk_25M, reset;
logic unsigned [addrSize-1:0] image_addr;
logic [width-1:0] colour_data;

rom rom0(.*);

initial 
begin
reset = 1;
#3ns reset = 0;
#3ns reset = 1;
end

initial
begin
  clk_25M = 0;
  #5ns  forever #5ns clk_25M = ~clk_25M;
end

initial
begin
image_addr = 0;
#5ns forever#5ns image_addr = image_addr + 1'd1;
end

initial
begin
image_addr = 0;
// #10ns image_addr = 1;
// #10ns image_addr = 2;
// #10ns image_addr = 14;
// #10ns image_addr = 15;
// #10ns image_addr = 150;
// #10ns image_addr = 300;
// #10ns image_addr = 800;
// #10ns image_addr = 1500;
// #10ns image_addr = 2047;
// #10ns image_addr = 2048;
// #10ns image_addr = 2049; 
// #10ns image_addr = 2050;  //neg
// #10ns image_addr = 4500; 
// #10ns image_addr = 4501;
// #10ns image_addr = 6399;
// #10ns image_addr = 6400;
// #10ns image_addr = 10000;
// #10ns image_addr = 15360;
// #10ns image_addr = 153600;

end

endmodule 