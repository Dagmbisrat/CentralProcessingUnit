library verilog;
use verilog.vl_types.all;
entity Processor2_vlg_check_tst is
    port(
        Neg             : in     vl_logic_vector(1 to 7);
        R1              : in     vl_logic_vector(1 to 7);
        R2              : in     vl_logic_vector(1 to 7);
        Student_id      : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end Processor2_vlg_check_tst;
