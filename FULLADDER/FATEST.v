//20L118 HARIHARAN R R
module FATEST;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100 A = 0;B = 0;C = 1;
		#100 A = 0;B = 1;C = 0;
		#100 A = 0;B = 1;C = 1;
		#100 A = 1;B = 0;C = 0;
		#100 A = 1;B = 0;C = 1;
		#100 A = 1;B = 1;C = 0;
		#100 A = 1;B = 1;C = 1;
        
		// Add stimulus here

	end
      
endmodule

