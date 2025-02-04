LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity ALU2 is
port(Clock: in std_logic;
		A,B: in unsigned(7 DOWNTO 0);
		student_id: in unsigned (3 DOWNTO 0);
		OP: in unsigned(15 DOWNTO 0);
		Neg: out std_logic;
		R1: out unsigned(3 DOWNTO 0);
		R2: out unsigned(3 DOWNTO 0));
end ALU2;
architecture calculation of ALU2 is 
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
				IF "00001001" > Reg2 THEN
					Result <= "00001001" - Reg2;
					Neg <= '1';
				ELSE
					Neg <= '0';
					Result <= Reg2 - "00001001";
				END IF;
			WHEN "0000000000000010" =>
				Neg <= '0';
				Result(3 DOWNTO 0) <= Reg2(7 DOWNTO 4);
				Result(7 DOWNTO 4) <= Reg2(3 DOWNTO 0);
				
			WHEN "0000000000000100" =>
				Neg <= '0';
				Result(7 DOWNTO 2) <= Reg1(5 DOWNTO 0);
				Result(1) <= '0';
				Result(0) <= '0';
				
			WHEN "0000000000001000" =>
				Result <= Reg1 NAND Reg2;
				Neg <= '0';
				
			WHEN "0000000000010000" =>
				IF Reg1 > Reg2 THEN
					Result <= Reg1;
				ELSE
					Result <= Reg2;
				END IF;				
				Neg <= '0';
				
			WHEN "0000000000100000" =>
				Neg <= '0';
				Result(7) <= NOT Reg2(7);
				Result(6) <= Reg2(6);
				Result(5) <= NOT Reg2(5);
				Result(4) <= Reg2(4);
				Result(3) <= NOT Reg2(3);
				Result(2) <= Reg2(2);
				Result(1) <= NOT Reg2(1);
				Result(0) <= Reg2(0);
				
			WHEN "0000000001000000" =>
				Result <= "00000000";
				Neg <= '0';
				
			WHEN "0000000010000000" =>
				Result(7 DOWNTO 4) <= Reg1(7 DOWNTO 4);
				Result(3 DOWNTO 0) <= Reg2(3 DOWNTO 0); 
				Neg <= '0';
				
			WHEN "0000000100000000" =>
				Result <= Reg1;
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