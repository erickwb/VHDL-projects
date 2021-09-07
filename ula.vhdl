-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; --pacote para comandos de adição e subtração 


entity ula is port(

	A,B	:	in std_logic_vector (3 downto 0);
    O	:	out std_logic_vector (3 downto 0);
    sel :	in std_logic_vector (2 downto 0)

);
end ula;


architecture hardware of ula is 
begin

process(A, B, sel)
begin 

	case sel is
    
    	when "000" => O <= A + B;
		when "001" => O <= A - B;
        when "010" => O <= A and B;
        when "011" => O <= A or B;
        when "100" => O <= A xor B;
        when "101" => O <= not A;
        when "110" => O <= not B;
        when others => O <= "ZZZZ";
    end case;
    
end process;

end hardware;

