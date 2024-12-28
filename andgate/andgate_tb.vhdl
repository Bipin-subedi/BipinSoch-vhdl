-- File: andgate_tb.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench (no ports required)
entity andgate_tb is
end andgate_tb;

-- Architecture definition
architecture Behavioral of andgate_tb is
    -- Component declaration for the unit under test (UUT)
    component andgate is
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the UUT
    signal A_tb : STD_LOGIC := '0';
    signal B_tb : STD_LOGIC := '0';
    signal Y_tb : STD_LOGIC;

begin
    -- Instantiate the AND gate
    uut: andgate
        Port map (
            A => A_tb,
            B => B_tb,
            Y => Y_tb
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: A=0, B=0
        A_tb <= '0';
        B_tb <= '0';
        wait for 10 ns;

        -- Test case 2: A=0, B=1
        A_tb <= '0';
        B_tb <= '1';
        wait for 10 ns;

        -- Test case 3: A=1, B=0
        A_tb <= '1';
        B_tb <= '0';
        wait for 10 ns;

        -- Test case 4: A=1, B=1
        A_tb <= '1';
        B_tb <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;
    end process;
end Behavioral;
