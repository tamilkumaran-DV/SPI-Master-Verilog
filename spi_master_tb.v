module spi_master_tb;
reg clk;
reg rst;
reg start;
reg [7:0] data_in;
reg miso;

wire mosi;
wire sclk;
wire cs;
wire [7:0]data_out;
wire done;

spi_master uut(
    .clk(clk),
	 .rst(rst),
	 .start(start),
	 .data_in(data_in),
	 .miso(miso),
	 .mosi(mosi),
	 .sclk(sclk),
	 .cs(cs),
	 .data_out(data_out),
	 .done(done)
	 );
	 
always #5 clk = ~clk;

initial begin
clk = 0;
rst = 1;
start = 0;
miso = 0;
data_in = 8'hA5;

#20;
rst = 0;

#20;
start = 1;

#10
start = 0;

forever begin
@(posedge sclk);
miso = ~miso;
end 
end 

initial begin
#400;
$stop;
end 
endmodule
	 