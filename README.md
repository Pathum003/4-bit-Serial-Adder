# 4-bit-Serial-Adder
Implement a 4-bit serial adder with a carry out to your Zybo-Z7-10

To start this project you will need:
  8LD PMOD
  SWT PMOD
  Zybo-Z7-10
  
  Vivado

Steps to begin:

Just download the entire file and run the .xpr file in Vivado.


OR 

create a new project in vivado.
  Choose Zybo-Z7-10 as your board
  Add sources to your project.
    Downlaod these files from this girhub repo // go to sources
    
      Full_Adder.v
      Serial_Adder.v
      top.v
      pmod_adder_const.xdc 
      
  Set top.v as your "top" file in Vivado.
  Create bitstream for you board.
      
