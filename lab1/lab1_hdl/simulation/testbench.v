// testbench is a module which only task is to test another module
// testbench is for simulation only, not for synthesis
module testbench;
    reg  [3:0] key;
    wire [0:0] LED;
    lab1 dut ( key, LED );
    initial 
        begin
            key = 4'b0000;    // set test signals value
            #10;            // pause
            key = 4'b0001;    // set test signals value
            #10;            // pause
            key = 4'b0010;    // set test signals value
            #10;            // pause
            key = 4'b0011;    // set test signals value
            #10;            // pause
			key = 4'b0100;    // set test signals value
            #10;            // pause
            key = 4'b0101;    // set test signals value
            #10;            // pause
            key = 4'b0110;    // set test signals value
            #10;            // pause
            key = 4'b0111;    // set test signals value
            #10;            // pause
			key = 4'b1000;    // set test signals value
            #10;            // pause
            key = 4'b1001;    // set test signals value
            #10;            // pause
            key = 4'b1010;    // set test signals value
            #10;            // pause
            key = 4'b1011;    // set test signals value
            #10;            // pause
			key = 4'b1100;    // set test signals value
            #10;            // pause
            key = 4'b1101;    // set test signals value
            #10;            // pause
            key = 4'b1110;    // set test signals value
            #10;            // pause
            key = 4'b1111;    // set test signals value
            #10;            // pause
        end
    initial 
        $monitor("key=%b LED=%b", key, LED);
    initial 
        $dumpvars;  //iverilog dump init

endmodule