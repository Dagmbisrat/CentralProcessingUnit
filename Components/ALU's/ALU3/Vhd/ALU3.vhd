LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity ALU3 is
port(Clock: in std_logic;
		A,B: in unsigned(7 DOWNTO 0);
		student_id: in unsigned (3 DOWNTO 0);
		OP: in unsigned(15 DOWNTO 0);
		Neg: out std_logic;
		R1: out unsigned(3 DOWNTO 0);
		R2: out unsigned(3 DOWNTO 0));
end ALU3;
architecture calculation of ALU3 is 
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
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
			WHEN "0000000000000010" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
			WHEN "0000000000000100" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000000001000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000000010000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000000100000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000001000000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000010000000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN "0000000100000000" =>
				Neg <= '0';
				IF student_id(0) = '1' THEN
					Result <= "11111111";
				ELSE
					Result <= "00000000";
				END IF;
				
			WHEN OTHERS =>
				-- do nothing
				Reg4 <= "00000000";
				Result <= "00000000";
				Neg <= '0';
			end case;
		end if;
	end process;
	
	R1 <= Result(3 DOWNTO 0);
	R2 <= Result(7 DOWNTO 4);
	end calculation; 