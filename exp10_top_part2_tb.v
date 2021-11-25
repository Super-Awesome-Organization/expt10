// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 10 Part 2
// 11/29/2021

// Description:
//	This testbench instainates exp10_top_part2 module. This testbench
//	will inject 128 consecutive bit faults to obtain 128 faulty-cipher texts.
//	Each faulty-cipher text is automatically saved to a hex file, named with the 
// 	bit postion of where the fault was injected. This test bench also produces the 
//	correct ciphertext and saves it to a hex file. The hex files generated from this
//	testbench are used for the DFA analysis in part3.

`timescale 1ns/1ns

module exp10_top_part2_tb ();

	reg 			clk = 1;
	reg 			fault_en;
	reg 	[6:0]	fault_bit;
	wire 	[127:0]	ciphertext;
	integer 		i;
	integer			fd;

	// instainate exp10_top_part2 module
	exp10_top_part2 U_TOP (
		.clk(clk),
		.fault_en(fault_en),
		.fault_bit(fault_bit),
		.ciphertext(ciphertext)
	);


	`define DELAY(TIME_CLK) #(10*TIME_CLK); //delays one clk cycle, TIME_CLK = number of clk cycles to delay

	// generate clock
	reg simState = 0;
	always begin 
		if (simState != 1) begin
			`DELAY(1/2)
			clk = ~clk;
		end
	end


	initial begin
		$display($time, "- Starting Sim");
		fault_en = 0;	// fault enable off
		`DELAY(100)
		fd = $fopen("output_files/non_fault_cipher.hex", "w+"); // create ciphertext hex file
		if (fd) begin
        	$fdisplay(fd, "%h", ciphertext);	// saves the 128 bit ciphertext value
        end else begin
        	$display("ERROR: can't open file %0d", fd);
        end

		fault_en = 1; 	// fault enable on, will generate faulty ciphertexts from this point forward

		// iterates through all bit postions to inject fault
		for (i=0; i<128; i=i+1) begin
			
			fault_bit = i;
            `DELAY(20)	// AES computing faulty ciphertext

            fd = $fopen($sformatf("output_files/%0d.hex", i), "w+");	// create hex file with current bit fault postion
            if (fd) begin
            	$fdisplay(fd, "%h", ciphertext);	// saves the 128 bit faulty ciphertext value
            end else begin
            	$display("ERROR: can't open file %0d", fd);
            end
            $fclose(fd);	// closes file
        end

        `DELAY(100)
		$stop;
	end

endmodule