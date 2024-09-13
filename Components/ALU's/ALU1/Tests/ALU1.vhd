LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity ALU1 is
port(Clock: in std_logic;
		A,B: in unsigned(7 DOWNTO 0);
		student_id: in unsigned (3 DOWNTO 0);
		OP: in unsigned(15 DOWNTO 0);
		Neg: out std_logic;
		R1: out unsigned(3 DOWNTO 0);
		R2: out unsigned(3 DOWNTO 0));
end ALU1;
architecture calculation of ALU1 is 
signal Reg1, Reg2, Result: unsigned(7 DOWNTO 0):=(others => '0');
signal Reg4: unsigned(0 to 7);
begin
Reg1 <= A;
Reg2 <= B;
process(OP)
begin
	if (Clock'EVENT AND Clock='1') THEN
		case OP is
			WHEN "0000000000000001" =>
				-- FUNCTION 1 Addition
				Result <= Reg1 + Reg2;
			WHEN "0000000000000010" =>
				-- FUNCTION 2 Subtraction bit with neg bit
				IF Reg2 > Reg1 THEN
					Result <= Reg2 - Reg1;
					Neg <= '1';
				ELSE
					Neg <= '0';
					Result <= Reg1 - Reg2;
				END IF;
			WHEN "0000000000000100" =>
				-- FUNCTION 3 invert bits (NOT)
				Result <= NOT Reg1;
				Neg <= '0';
				
			WHEN "0000000000001000" =>
				-- FUNCTION 4 Boolean NAND (bitwise operation)
				Result <= Reg1 NAND Reg2;
				Neg <= '0';
				
			WHEN "0000000000010000" =>
				-- FUNCTION 5 Boolean NOR (bitwise operation)
				Result <= Reg1 NOR Reg2;
				Neg <= '0';
				
			WHEN "0000000000100000" =>
				-- FUNCTION 6 Boolean AND (bitwise operation)
				Result <= Reg1 AND Reg2;
				Neg <= '0';
				
			WHEN "0000000001000000" =>
				-- FUNCTION 7 Boolean XOR (bitwise operation)
				Result <= Reg1 XOR Reg2;
				Neg <= '0';
				
			WHEN "0000000010000000" =>
				-- FUNCTION 8 Boolean OR (bitwise operation)
				Result <= Reg1 OR Reg2;
				Neg <= '0';
				
			WHEN "0000000100000000" =>
				-- FUNCTION 9 Boolean XNOR (bitwise operation)
				Result <= Reg1 XNOR Reg2;
				Neg <= '0';
				
			WHEN OTHERS =>
				-- Dont care, do nothing (output 00000000 for Reg4 and Result)
				Reg4 <= "00000000";
				Result <= "00000000";
				Neg <= '0';
			end case;
		end if;
	end process;
	
	R1 <= Result(3 DOWNTO 0);
	R2 <= Result(7 DOWNTO 4);
	end calculation; 