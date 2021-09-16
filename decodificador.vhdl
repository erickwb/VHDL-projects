-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;


entity decodificador is port (

    B : in std_logic_vector(1 downto 0); --vetor com as entradas b0 e b1
    Y : out std_logic_vector(3 downto 0); -- vetor com as saidas y0 y1 y2 y3
    en : in std_logic;

);
end decodificador;


architecture hardware of decodificador is
begin

processo01 : process(B , en)
begin

    Y <= "ZZZZ";
    
    if(en = '1') then
    	
        case B is 
        	when "00" => Y <= "0001";
            when "01" => Y <= "0010";
            when "10" => Y <= "0100";
            when "11" => Y <= "1000";
         	when others => Y <= "0000"; --qualque outra informaçao entao y recbe 0000
        end case;
     end if;
end process processo01;

end hardware;

