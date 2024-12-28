-- norgate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity norgate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end norgate;

-- Architecture Definition
architecture Behavioral of norgate is
begin
    -- NOR Gate Logic
    Y <= not (A or B);
end Behavioral;
