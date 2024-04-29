module tt(clk,seg,way);
input clk;// 
output reg[7:0] seg;
output reg[3:0] way;

reg[11:0]frequency;
always@(posedge clk)frequency=frequency+1;   
always @(posedge frequency[11])  
begin
way=way<<1; //
if(way==0)way=1; //   ? n [ o  ??
if(way[3]==1)seg<=8'b11011010; // 2   a/b/c/d/e/f/g/.
if(way[2]==1)seg<=8'b11111110; // 8
if(way[1]==1)seg<=8'b11100111; // . 9
if(way[0]==1)seg<=8'b01100001; // 1.

end
endmodule

