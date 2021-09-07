-- Code your design here
-- code for combinational circuit
library IEEE;
use IEEE.std_logic_1164.all;


entity circuito_combinacional is port 
(
	A	:	in std_logic;
    B	:	in std_logic;
    C	:	in std_logic;
    O	:	out std_logic;

);
end circuito_combinacional;

architecture hardware of circuito_combinacional is 
-- declaraçao dos sinais antes de begin e depois de architecture
signal OR1	:	std_logic;
signal OR2	:	std_logic;
signal OR3	:	std_logic;

 --sinais = ramo interno do circuito 

begin
  -- informação paralela poderiamo colocar a atribuiçao no inicio  O <= (OR1 or OR2 or OR3);
 
 OR1 <= (not A) and (not B);
 OR2 <= (not B) and (not C);
 OR3 <= A and (not C);
 
 O <= (OR1 or OR2 or OR3);


end hardware;

