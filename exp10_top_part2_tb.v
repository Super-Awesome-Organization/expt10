// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 4 Part 3
// 9/17/21

// Description:
//	trojan_seq_tb.v is a testbench to test functionality of trojan_seq.v
`timescale 1ns/1ns

module exp10_top_part2_tb ();

	reg 			clk = 1;
	reg 			fault_en;
	reg 	[6:0]	fault_bit;
	wire 	[127:0]	ciphertext;
	integer 		i;
	integer			fd;

	
	exp10_top_part2 U_TOP (
		.clk(clk),
		.fault_en(fault_en),
		.fault_bit(fault_bit),
		.ciphertext(ciphertext)
	);


	`define DELAY(TIME_CLK) #(10*TIME_CLK); //delays one clk cycle, TIME_CLK = number of clk cycles to delay

	reg simState = 0;
	always begin 
		if (simState != 1) begin
			`DELAY(1/2)
			clk = ~clk;
		end
	end


	initial begin
		$display($time, "- Starting Sim");
		fault_en = 0;
		`DELAY(100)
		fd = $fopen("output_files/non_fault_cipher.hex", "w+");
		if (fd) begin
        	$fdisplay(fd, "%h", ciphertext);
        end else begin
        	$display("ERROR: can't open file %0d", fd);
        end

		fault_en = 1;
		for (i=0; i<128; i=i+1) begin
			fault_bit = i;
            `DELAY(20)

            fd = $fopen($sformatf("output_files/%0d.hex", i), "w+");
            if (fd) begin
            	$fdisplay(fd, "%h", ciphertext);
            end else begin
            	$display("ERROR: can't open file %0d", fd);
            end
            $fclose(fd);
        end

        `DELAY(100)
		$stop;
	end

endmodule