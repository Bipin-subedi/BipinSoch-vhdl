-- xnorgate.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity xnorgate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end xnorgate;

-- Architecture Definition
architecture Behavioral of xnorgate is
begin
    -- XNOR Gate Logic
    Y <= not (A xor B);
end Behavioral;
