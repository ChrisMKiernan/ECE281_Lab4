# Lab 4 Datapath

Better late than never? I understand the implications/consequences of this README being very late, and I must accept them. I did, however, assume that having something to be graded is better than nothing.

## Design

### ALU

The ALU was "built from scratch," that is, the shell basically only contained the setup of the code. However, coding the ALU was relatively easy, as most of the commands for creating the ALU were contained in the VHDL code. These are and, not, or, and +. A couple of the operantions were simply to load a value from the data bus to the accumulator, which was done with a simple variable assignment. The two's complement, or negative function, was done by using the "not" function and adding one,  a foolproof method for finding the two's complement. "ROR" function was completed by using signal assignments, assigning the top three bits of the accumulator to the bottom three bits of the result, then the LSB of the accumulator to the MSB of the result. The multiplexor was created by using if and elsif statements. 

The ALU was tested and functional on 10 April, the commit date of the ALU_shell.vhd file. The waveform picture was uploaded late, but the ALU was not modified further than the uploaded shell file. 

### Datapath

The datapath was provided with the PC completed and space for all other components of the PRISM architecture. Th eother registers needed for the datapath were relatively simple to program, each in their own process. The registers were made to be sensitive to the clock and asynchronous reset button, except in the case of the address selector, which was sensitive to MarHi and MarLo, as well as the PC. It was considered to be synchronous by proxy of the other registers. Each register was programmed using if and elsif statements from their respective control signals. The final piece of code was A<0 and A=0, status signals exiting the datapath. A=0 ewas programmed using a when statement: the signal only went active when all 4 bits of the accumulator went to 0. A<0 could be assigned the same bit as the MSB of the accumulator. This is because the MSB of a number is the sign, if that bit is 1, then the number is negative. This way, answering the "question" A<0? returns active when the MSB is active, meaning the whole number is negative. 

The Datapath file should be operational in the current version uploaded 20 April. I had several errors with the testbench file that I did not know how to solve and I was unable to test the datapath file. Had I not completed the coding late, it would have been more applicable to attempt to resolve the issue with the testbench, however it did not seem applicable to focus on this lab so late after it was technically due. I did reference datapath files from other students in an attempt to check my work, and found that my file matched very closely with other students, with only minor syntax differences that I could see. 

## Documentation

Referenced C3C Park and C3C Bodin's datapath files to check my work, as discussed above.
