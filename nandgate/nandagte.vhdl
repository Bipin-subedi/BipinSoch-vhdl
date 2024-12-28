-- nandgate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity nandgate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end nandgate;

-- Architecture Definition
architecture Behavioral of nandgate is
begin
    -- NAND Gate Logic
    Y <= not (A and B);
end Behavioral;
