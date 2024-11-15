----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2024 08:43:02 PM
-- Design Name: 
-- Module Name: mux8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i4 : in STD_LOGIC;
           i5 : in STD_LOGIC;
           i6 : in STD_LOGIC;
           i7 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           y : out STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is

begin
    
    y <= i0 when (a1='0' and a2='0' and a3='0') else
         i1 when (a1='0' and a2='0' and a3='1') else
         i2 when (a1='0' and a2='1' and a3='0') else
         i3 when (a1='0' and a2='1' and a3='1') else
         i4 when (a1='1' and a2='0' and a3='0') else
         i5 when (a1='1' and a2='0' and a3='1') else
         i6 when (a1='1' and a2='1' and a3='0') else
         i7 when (a1='1' and a2='1' and a3='1');

end Behavioral;