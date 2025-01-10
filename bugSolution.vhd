```vhdl
ENTITY bugSolution IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF bugSolution IS
  SIGNAL data_reg : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
BEGIN
  PROCESS (clk, rst, data_in) -- Added data_in to the sensitivity list
  BEGIN
    IF rst = '1' THEN
      data_reg <= "00000000";
    ELSIF rising_edge(clk) THEN
      data_reg <= data_in;
    END IF;
  END PROCESS;

data_out <= data_reg;
END ARCHITECTURE;
```