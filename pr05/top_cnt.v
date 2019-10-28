module    top_cnt(    out,
                      num,
                      clk,
                      rst_n);
                      
output   [5:0]        out ;

input    [31:0]       num ;
input                 clk ;
input                 rst_n ;

wire                  clk_1hz ;

nco       u_nco(      .clk_1hz ( clk_1hz       ),
                      .num     ( num           ),
                      .clk     ( clk           ),
                      .rst_n   ( rst_n         ));
                      
cnt6      u_cnt6(     .out     ( out           ),
                      .clk     ( clk_1hz       ),
                      .rst_n   ( rst_n         ));
endmodule
