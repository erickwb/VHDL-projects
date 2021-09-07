-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;


entity Flip_flop_D is port (
	D	: in std_logic;
    clk : in std_logic;
    Q	: out std_logic;
    Qn	: out std_logic;

);
end Flip_flop_D;




architecture hardware of Flip_flop_D is 


signal dado : std_logic;

begin 

	dado <= D when (clk = '1') else dado;
    
    Q <= dado;
    Qn <= not dado;


end hardware;
