module memory_system(
input[7:0] data,
input store,
input [1:0]addr,
output [7:0] memory
);
wire [7:0] d0,d1,d2,d3;
wire s0,s1,s2,s3;
demulti_8bit data_demux(.data(data),.sel(addr),.A(d0),.B(d1),.C(d2),.D(d3));
demulti_8bit store_demux(.data({7'b0000000, store}),.sel(addr),.A(s0),.B(s1),.C(s2),.D(s3));
wire [7:0] m0, m1, m2, m3;
byte_memory b0(.data(d0), .store(s0), .memory(m0));
byte_memory b1(.data(d1), .store(s1), .memory(m1));
byte_memory b2(.data(d2), .store(s2), .memory(m2));
byte_memory b3(.data(d3), .store(s3), .memory(m3));
multi_8bit out_mux(.A(m0), .B(m1), .C(m2), .D(m3), .sel(addr), .out(memory));
endmodule
