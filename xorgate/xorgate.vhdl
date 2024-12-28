-- xorgate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity xorgate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end xorgate;

-- Architecture Definition
architecture Behavioral of xorgate is
begin
    -- XOR Gate Logic
    Y <= A xor B;
end Behavioral;
