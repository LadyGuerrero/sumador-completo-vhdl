-- ============================================================
-- Componente: Full Adder (Sumador Completo)
-- Autor: LadyGuerrero
-- Herramienta: EDA Playground + GHDL 5.1.1
-- Entradas:  A, B, Cin  (STD_LOGIC)
-- Salidas:   S, Cout    (STD_LOGIC)
-- ============================================================
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
    port(
        A   : in std_logic;
        B   : in std_logic;
        Cin : in std_logic;
        S   : out std_logic;
        Cout: out std_logic
    );
end full_adder;

architecture structural of full_adder is
    signal S1, C1, C2 : std_logic;
begin
    S1 <= A xor B;
    C1 <= A and B;
    S  <= S1 xor Cin;
    C2 <= S1 and Cin;
    Cout <= C1 or C2;
end structural;
