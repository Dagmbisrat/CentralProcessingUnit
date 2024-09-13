library verilog;
use verilog.vl_types.all;
entity Processor3 is
    port(
        R1              : out    vl_logic_vector(1 to 7);
        Clock           : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(0 to 7);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(0 to 7);
        Enable          : in     vl_logic;
        data_in         : in     vl_logic;
        Reset_FSM       : in     vl_logic;
        Student_id      : out    vl_logic_vector(1 to 7)
    );
end Processor3;
