-- Code your design here
--code for an xor gate
library IEEE;   -- 
use IEEE.std_logic_1164.all; --biblioteca padrao 1164 

--deve ter o mesmo nome do projeto
entity Porta_xor is port( --declaração da entidade

    a	:	 in	std_logic; -- porta a para entrada 
    b 	:	 in	std_logic; -- porta b para entrada 
    c	:	 out std_logic -- porta c para saida 
);
end Porta_xor;

-- declarando arquitetura 

architecture hardware of Porta_xor is
begin		--iniciar a arquitetura hardware

c <= a XOR b;  --saida c = a xor b
  
end hardware;
	
