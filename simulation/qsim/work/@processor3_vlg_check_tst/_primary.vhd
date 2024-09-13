library verilog;
use verilog.vl_types.all;
entity Processor3_vlg_check_tst is
    port(
        R1              : in     vl_logic_vector(1 to 7);
        Student_id      : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end Processor3_vlg_check_tst;
