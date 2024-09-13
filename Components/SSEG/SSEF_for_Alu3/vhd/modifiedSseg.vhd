LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY modifiedSseg IS
	PORT(	sign			:IN	STD_LOGIC;
			bcd			:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			sled			:OUT STD_LOGIC_VECTOR(1 to 7);
			leds			:OUT STD_LOGIC_VECTOR(1 to 7));
END modifiedSseg;

ARCHITECTURE Behaviour OF modifiedSseg IS
BEGIN
	PROCESS(bcd)
	BEGIN
		CASE bcd IS				--	 abcdefg
			WHEN "1111"	=>leds<=NOT"0111011"; -- y
			WHEN "0000"	=>leds<=NOT"1110110"; -- n
			WHEN OTHERS	=>leds<=NOT"0000000"; -- -
		END CASE;
	END PROCESS;
	
	PROCESS(sign)
	BEGIN
		CASE sign IS
			WHEN '1' =>sled<=NOT"0000001";
			WHEN OTHERS =>sled<="1111111";
		END CASE;
	END PROCESS;
END Behaviour;