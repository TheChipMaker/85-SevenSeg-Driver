LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sevenSeg_tb IS
END sevenSeg_tb;

ARCHITECTURE Test OF sevenSeg_tb IS

    -- DUT signals
    SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Y : STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: ENTITY work.sevenSeg
        PORT MAP (
            A => A,
            Y => Y
        );

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Apply inputs 0 to 15
        FOR i IN 0 TO 15 LOOP
            A <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
            WAIT FOR 1 ns;
        END LOOP;
        WAIT; -- stop simulation
    END PROCESS;

END Test;