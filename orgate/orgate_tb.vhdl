-- orgate_tb.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity orgate_tb is
end orgate_tb;

-- Architecture Definition
architecture Behavioral of orgate_tb is
    -- Component Declaration
    component orgate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the DUT (Device Under Test)
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin
    -- Instantiate the OR gate
    DUT: orgate
        Port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Stimulus process
    stimulus: process
    begin
        -- Test Case 1: A=0, B=0
        A <= '0'; B <= '0';
        wait for 10 ns;

        -- Test Case 2: A=0, B=1
        A <= '0'; B <= '1';
        wait for 10 ns;

        -- Test Case 3: A=1, B=0
        A <= '1'; B <= '0';
        wait for 10 ns;

        -- Test Case 4: A=1, B=1
        A <= '1'; B <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
