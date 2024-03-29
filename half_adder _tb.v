`include "half_adder.v"

module half_adder_tb;
reg a,b;
wire s,c;

half _adder add1(s,c,a,b);

initial 
begin

    $dupfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
      a = 0; b = 0;
      #1
      a = 0; b = 1;
      #1
      a = 1; b = 0;
      #1
      a = 1; b = 1;
end
endmodule