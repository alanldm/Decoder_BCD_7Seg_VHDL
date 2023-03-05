library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity cont is
	port(
		en, clk, rst: in std_logic;
		s: out std_logic_vector(0 to 6)
	);
end cont;

architecture rtl of cont is
	component decoder port(
		i: in std_logic_vector(2 downto 0);
		o: out std_logic_vector(0 to 6)
	);
	end component;
	
	signal count: std_logic_vector(2 downto 0);
	
	begin
		conect: decoder port map(o=>s, i=>count);
		
		process(clk, en, rst)
		begin
			if rst = '0' then
				if en = '1' then
					if rising_edge(clk) then
						count <= count + "001";
					end if;
				end if;
			else
				count <= "000";	
			end if;
		end process;
	end rtl;