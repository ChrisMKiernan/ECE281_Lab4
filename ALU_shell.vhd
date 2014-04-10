-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : usafa
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   


begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD



aluswitch: process (Accumulator, Data, OpSel)
        begin
		  

		  
			if OpSel="000" then
			result <= Data and Accumulator;
		  
			elsif OpSel="001" then
			result <= (not Accumulator) + '1';
		  
			elsif Opsel="010" then
			result <= not Accumulator;
			
			elsif OpSel="011" then
			result(2 downto 0) <= Accumulator(3 downto 1);
			result(3) <= Accumulator(0);
			
			elsif OpSel="100" then
			result <= Data or Accumulator;
			
			elsif OpSel="101" then
			result <= Data;
			
			elsif OpSel="110" then
			result <= Data + Accumulator;
			
			elsif Opsel="111" then
			result <= Data;
			
			else
			result <= Accumulator;
		-- enter your if/then/else or case statements here
			end if;
		end process;

-- OR, enter your conditional signal statement here

end ALU;

