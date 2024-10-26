For this Project, I created 3 types of simple processing units. This Was done using Quartus II - V13.0 and tested using waveforms then implemented on the Cyclone II EP2C35F672C6 board.
It used 2 - 8 bit inputs A and B. And intigrated 4 unique circuit components : Two latches, an Arithmetic Logic Unit (ALU) (with 3 types), an FSM, and a 4:16 decoder.
Latches were used as temporary storage of the initial values (A and B).The ALU's operations depended on its microcode-programmed state to produce an 8-bit output.
The control unit consisted of a Mealy FSM, acting as an up-counter cycling through states 0-8, and a 4:16 decoder.The FSM will then be used to decide the operation.
