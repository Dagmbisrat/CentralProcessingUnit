library verilog;
use verilog.vl_types.all;
entity Processor2_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(0 to 7);
        B               : in     vl_logic_vector(0 to 7);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        Enable          : in     vl_logic;
        Reset_A         : in     vl_logic;
        Reset_B         : in     vl_logic;
        Reset_FSM       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Processor2_vlg_sample_tst;
