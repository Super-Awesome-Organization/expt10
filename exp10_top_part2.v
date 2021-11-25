// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 10 Part 2
// 11/29/2021

// Description:
//	This module instantiates the aes_128_fault.v. This module passes in
//	the fault enable signal and thelocation of where the bit fault should
//	occur
//  Since we are group 2 we used 97157a6fc8e4bbe432c40d35f2716092 as
//  the state and eba02e379817d636a144551df49ade37 as the key.


module exp10_top_part2 (clk, fault_en, fault_bit, ciphertext);

    input 				clk;
    input 				fault_en;	// enable or disable fault
    input 	[6:0] 		fault_bit;	// location of where bit fault should occur.
    output	[127:0] 	ciphertext;

    wire [127: 0] state, key;

    assign state    = 128'h97157a6fc8e4bbe432c40d35f2716092;    // change state here
    assign key      = 128'heba02e379817d636a144551df49ade37;    // change key here

    // instantiate AES Fault
	aes_128_fault U1(.clk(clk), 
				.state(state), 
				.key(key),
				.fault_en(fault_en),
				.fault_bit(fault_bit),
				.out(ciphertext));

 //    // instantiate RAM
	// ram1 U2(
	// .address(1'b0),
	// .clock(clk),
	// .data(ciphertext),
	// .wren(1'b1),
	// .q());

endmodule