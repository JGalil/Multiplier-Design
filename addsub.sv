// N-bit Adder/Subtractor (active low subtract)
// CSE140L     lab 1
// combinational logic
module addsub #(parameter dw=8)		 // dw = data width
(
  input        [dw-1:0] dataa,
  input        [dw-1:0] datab,
  input                 add_sub,	 // if this is 1, add; else subtract
  output logic [dw-1:0] result
);

  /*
  always_comb begin

    if (add_sub == 1)
      result = dataa + datab;
    else 
      result = dataa - datab;

  end


endmodule

*/

// fill in guts  
// combinational logic, use blocking (=) assignment      
//add_sub       result
//1             dataa + datab;						
//0             dataa - datab;   


wire [dw-1:0] carry;
wire carry_out;

logic [dw-1:0] datab_neg;

assign datab_neg = add_sub ? datab : ~datab[dw-1:0] + 1'b1;


genvar i;
generate
for(i = 0; i < dw; i++) begin
	if(i==0) begin
		half_adder ha(dataa[0], datab_neg[0], result[0], carry[0]);
	end
	else begin
		full_adder fa(dataa[i], datab_neg[i], carry[i-1], result[i], carry[i]);
	end
end
	assign carry_out = carry[dw-1];
endgenerate

endmodule

module half_adder(
  input x, y, 
  output logic s, c);
	always_comb s = x^y;
	always_comb c = x&y;
endmodule

module full_adder(input logic A, B, C_in, output logic S, C_out);

	always_comb S = (A^B) ^ C_in;

	always_comb C_out = ((A^B) & C_in) | (A&B);

endmodule


