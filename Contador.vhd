library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Contador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
			  A7, B7, C7, D7, E7, F7, G7 : out STD_LOGIC;
			  A6, B6, C6, D6, E6, F6, G6 : out STD_LOGIC

		);
           
end Contador;

architecture Behavioral of Contador is
    signal count : integer range 0 to 99 := 0;
	 signal Dd, Du : integer range 0 to 9 := 0;
    signal segments_d, segments_u : STD_LOGIC_VECTOR(6 downto 0);
    signal binary_digits : STD_LOGIC_VECTOR(6 downto 0);
	 type segment_array is array (0 to 99) of STD_LOGIC_VECTOR(6 downto 0);

	constant seven_segment : segment_array := (
        "0000001", "1001111", "0010010", "0000110", "1001100", -- 0-4
        "0100100", "0100000", "0001111", "0000000", "0000100", -- 5-9
        "0001000", "0000010", "0000110", "1001000", "1100000", -- 10-14
        "0110000", "1000010", "0010000", "0000100", "0001000", -- 15-19
        "0011100", "0111111", "0000010", "0001100", "0011000", -- 20-24
        "0100000", "0110110", "1110110", "0011110", "0111100", -- 25-29
        "1000110", "0001110", "1001110", "1101111", "1111000", -- 30-34
        "1010000", "1110111", "0011100", "0111001", "1000011", -- 35-39
        "0101111", "0100111", "1110011", "0111100", "0111000", -- 40-44
        "0010001", "0011000", "0011110", "0110001", "1111011", -- 45-49
        "1101011", "0111101", "1000111", "1111100", "1011000", -- 50-54
        "1010010", "0111011", "1111001", "1001001", "1111010", -- 55-59
        "1011010", "1111011", "0101100", "0000001", "1001111", -- 60-64
        "0010010", "0000110", "1001100", "0100100", "0100000", -- 65-69
        "0001111", "0000000", "0000100", "0001000", "0000010", -- 70-74
        "0000110", "1001000", "1100000", "0110000", "1000010", -- 75-79
        "0010000", "0000100", "0001000", "0011100", "0111111", -- 80-84
        "0000010", "0001100", "0011000", "0100000", "0110110", -- 85-89
        "1110110", "0011110", "0111100", "1000110", "0001110", -- 90-94
        "1001110", "1101111", "1111000", "1010000", "1110111"); -- 95-99
		  

    
begin
    process (clk, reset)
    begin
        if reset = '1' then
            count <= 0;
            binary_digits <= "0000001";
        elsif rising_edge(clk) then
            if count < 99 then
                count <= count + 1;
            else
                count <= 0;
            end if;
        end if;
		  
		  Dd <= count / 10;
        Du <= count mod 10;

        segments_d <= seven_segment(Dd);
        segments_u <= seven_segment(Du);
		  
    end process;
	 
	 -- HEX6
    A6 <= segments_u(0);
    B6 <= segments_u(1);
    C6 <= segments_u(2);
    D6 <= segments_u(3);
    E6 <= segments_u(4);
    F6 <= segments_u(5);
    G6 <= segments_u(6);

    -- HEX7
    A7 <= segments_d(0);
    B7 <= segments_d(1);
    C7 <= segments_d(2);
    D7 <= segments_d(3);
    E7 <= segments_d(4);
    F7 <= segments_d(5);
    G7 <= segments_d(6);
	



end Behavioral;
