module spi_master(
input wire clk,
input wire rst,
input wire start,
input wire [7:0]data_in,
input wire miso,

output reg mosi,
output reg sclk,
output reg cs,
output reg [7:0] data_out,
output reg done
);
reg [7:0] shift_reg;
reg [2:0] bit_cnt;
reg [1:0] state;

parameter IDLE = 2'b00;
parameter TRANSFER =2'b01;
parameter FINISH = 2'b0;

always@(posedge clk or posedge rst)
begin
if (rst) begin
state <= IDLE;
cs <= 1'b1;
sclk <=1'b0;
done <= 1'b0;
bit_cnt <= 3'd7;
shift_reg <=8'd0;
data_out <=8'd0;
mosi <= 1'b0;
end
else begin
case(state)
IDLE:begin
done <= 1'b0;
sclk <=1'b0;
cs <=1'b1;

if(start)begin
cs <= 1'b0;
shift_reg<=data_in;
bit_cnt<=3'd7;
state <= TRANSFER;
end 
end
TRANSFER: begin
sclk <= ~sclk;
if(sclk == 1'b0)begin
mosi <= shift_reg[bit_cnt];
end 
else begin
data_out[bit_cnt] <= miso;

if(bit_cnt == 0)
state <= FINISH;
else
bit_cnt<= bit_cnt-1;
end 
end
FINISH: begin
cs <= 1'b1;
sclk <= 1'b0;
done <= 1'b1;
state <= IDLE;
end 

default:
state <= IDLE;
endcase
end 
end 
endmodule

