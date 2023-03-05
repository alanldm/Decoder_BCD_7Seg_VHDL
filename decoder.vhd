library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
	port(
		i: in std_logic_vector(2 downto 0);
		o: out std_logic_vector(0 to 6));
end decoder;

architecture comb of decoder is
	begin
		o <= "0000001" when i="000" else
			  "1001111" when i="001" else
			  "0010010" when i="010" else
			  "0000110" when i="011" else
			  "1001100" when i="100" else
			  "0100100" when i="101" else
			  "0100000" when i="110" else
			  "0001111" when i="111";
end comb;