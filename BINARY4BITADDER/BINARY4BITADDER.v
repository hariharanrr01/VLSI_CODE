//20L118 HARIHARAN R R

module BINARY4BITADDER(input [3:0] a,b,
    input cin,
    output co,
    output [3:0] s
    );
wire c1,c2,c3;
fulladder fa0(a[0],b[0],cin,s[0],c1);
fulladder fa1(a[1],b[1],c1,s[1],c2);
fulladder fa2(a[2],b[2],c2,s[2],c3);
fulladder fa3(a[3],b[3],c3,s[3],co);
endmodule

module fulladder(input A,B,C,output sum,carry );
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
