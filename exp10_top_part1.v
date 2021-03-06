// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 10 Part 1
// 11/29/2021

// Description:
//	This module instantiates the aes_128.v and a ram of 128 bits wide and 
//  1 word deep. The state and key values are assigned in this module. 
//  Since we are group 2 we used 97157a6fc8e4bbe432c40d35f2716092 as
//  the state and eba02e379817d636a144551df49ade37 as the key.


module exp10_top_part1 (clk);

    input clk;

    wire [127: 0] state, key, ciphertext;

    assign state    = 128'h97157a6fc8e4bbe432c40d35f2716092;    // change state here
    assign key      = 128'heba02e379817d636a144551df49ade37;    // change key here

    // instantiate AES 
	aes_128 U1(.clk(clk), 
				.state(state), 
				.key(key), 
				.out(ciphertext));

    // instantiate RAM

	ram1 U2(
	.address(1'b0),
	.clock(clk),
	.data(ciphertext),
	.wren(1'b1),
	.q());

endmodule