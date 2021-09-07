-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;


entity mux_4to_1 is port(
-- Poderia colocar 
		-- A0 : in std_logic;
        -- A1 : in std_logic;
        --usando vetores fica
	sel	:	in std_logic_vector(1 downto 0); -- vetor de 2 elementos para seleçao
    A	:	in std_logic_vector(3 downto 0); -- vetor de 4 elementod para as entras
    X	:	out std_logic
);
end mux_4to_1;

architecture hardware of mux_4to_1 is
begin
	with sel select -- com a seleçao das entradas de seleçao 
   		X <= A(0) when "00", --quando sel (vetor de seleçao for 00) X recebe A(0)
        	 A(1) when "01", 
             A(2) when "10", 
             A(3) when "11",
             '0' when others; --zero em qualquer outro caso  
end hardware;

