//20L118 HARIHARAN R R
module FA(input A,B,C,output sum,carry );
wire d0,b0,b1;
halfadder g1(A,B,d0,b0);
halfadder g2(d0,C,carry,b1);
or g3(sum,b1,b0);
endmodule

module halfadder(a,b,s,c);
input a,b;
output s,c;
//assign{c,s} =a+b; 
assign s=a^b;
assign c=a&b;
endmodule

