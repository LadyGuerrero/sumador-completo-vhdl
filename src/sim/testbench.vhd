-- ============================================================
-- Banco de Pruebas: testbench.vhd
-- Autor: LadyGuerrero
-- Propósito: Verificar 8 combinaciones del Sumador Completo
-- Simulador: GHDL 5.1.1 | EDA Playground
-- ============================================================
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture behavior of testbench is
    component full_adder
        port(A, B, Cin : in std_logic; S, Cout : out std_logic);
    end component;

    signal A, B, Cin : std_logic := '0';
    signal S, Cout   : std_logic;
begin
    DUT: full_adder port map(A=>A, B=>B, Cin=>Cin, S=>S, Cout=>Cout);

    process begin
        A<='0'; B<='0'; Cin<='0'; wait for 10 ns; -- S=0 Cout=0
        A<='0'; B<='0'; Cin<='1'; wait for 10 ns; -- S=1 Cout=0
        A<='0'; B<='1'; Cin<='0'; wait for 10 ns; -- S=1 Cout=0
        A<='0'; B<='1'; Cin<='1'; wait for 10 ns; -- S=0 Cout=1
        A<='1'; B<='0'; Cin<='0'; wait for 10 ns; -- S=1 Cout=0
        A<='1'; B<='0'; Cin<='1'; wait for 10 ns; -- S=0 Cout=1
        A<='1'; B<='1'; Cin<='0'; wait for 10 ns; -- S=0 Cout=1
        A<='1'; B<='1'; Cin<='1'; wait for 10 ns; -- S=1 Cout=1
        wait;
    end process;
end behavior;
