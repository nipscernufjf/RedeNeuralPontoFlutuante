library verilog;
use verilog.vl_types.all;
entity reg_file is
    generic(
        MDATAW          : integer := 8
    );
    port(
        srf             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        addr            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MDATAW : constant is 1;
end reg_file;
