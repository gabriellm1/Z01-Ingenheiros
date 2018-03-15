--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
signal fio1 : std_logic;
signal fio2 : std_logic;


not1: entity work.not1bit
	port map (
		a => SW(0);
		q => fio1;
	);
	
and1: entity work.and1bit
	port map(
	a => fio1;
	b => SW(2);
	q => fio2;

---------------
-- implementacao
---------------
begin
 
--  LEDR(0) <= SW(0);
	 LEDR(0) <= fio2;
end rtl;
