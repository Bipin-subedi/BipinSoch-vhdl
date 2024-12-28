-- File: andgate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration
entity andgate is
    Port (
        A : in STD_LOGIC;  -- Input A
        B : in STD_LOGIC;  -- Input B
        Y : out STD_LOGIC  -- Output Y
    );
end andgate;

-- Architecture definition
architecture Behavioral of andgate is
begin
    -- Process to implement AND gate functionality
    Y <= A and B; -- Output is the logical AND of inputs A and B
end Behavioral;
