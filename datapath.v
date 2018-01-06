`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:56 11/10/2017 
// Design Name: 
// Module Name:    datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top();
	wire [15:0] instr, check, check1, check2;
	wire dcond, regWrite, memWrite;
	wire [5:0] bit_1;
	wire [5:0] mux_arr;
	wire [2:0] fsel_arr, wpa;
	wire [3:0] dsel;
	wire clk, clk_sp, clk_status, clk_reg, reset;
	wire [15:0] rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22; 
	controller c(instr, check, dcond, regWrite, memWrite, mux_arr, fsel_arr, dsel, clk, clk_sp, clk_status);
	datapath data(wpa, check, check1, check2,clk, clk_sp, clk_reg, clk_status,reset, dsel, fsel_arr, mux_arr, memWrite, regWrite, instr, dcond, rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	test t(clk, clk_reg,reset, rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
endmodule

module test(clk, clk_reg,reset, rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	output reg [15:0] rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22;
	output reg clk, reset, clk_reg;
	integer t;
	initial
	begin
		reset = 0;
		#5
		rom_instr0 = 16'b0000010000000000;
		rom_instr1 = 16'b0001000000000000;
		rom_mem20 = 16'b0000000000000100;
		rom_mem21 = 16'b0000000000000011;
		rom_mem22 = 16'b0000000000000110;
		rom_instr2 = 16'b0001010010000000;
		rom_instr3 = 16'b0000000010000000;
		rom_instr4 = 16'b0001000000000000;
		rom_instr5 = 16'b0000000000000000;
		rom_instr6 = 16'b0000010000000000;
		reset = 1;
		//sp_init = 42;
		#1 reset = 0;
		#1
		clk = 0;
		clk_reg = 0;
		//#10 clk = ~clk;
		//rom_mem0 = 16'b0001001110000000;
		//dcond = 1;
		t = 0;
		while(t<1000)
		begin
			#5
			clk_reg = ~clk_reg;
			#5
			clk = ~clk;
			t = t+1;
		end
	end
endmodule

module controller(instr, check, dcond, regWrite, memWrite, mux_arr, fsel_arr, dsel, clk, clk_sp, clk_status);
	input [15:0] instr;
	input dcond ,clk;
	output [5:0] mux_arr;
	output [2:0] fsel_arr; // fsel[2] = alu of sp, fsel[1:0] = alu for add, sub;
	output [3:0] dsel;
	output regWrite, memWrite;
	output clk_sp, clk_status;
	output [15:0] check;
	//output [5:0] bit_1;
	wire t1,t2,t3,t4,t5, stack, branch, call, ret, alu;
	wire [16:0] type_instr;
	assign dsel = instr[15:12];
	//assign check = instr;
	//assign bit_1 = mux_arr;
	nor Stack(stack, instr[15],instr[14],instr[13],instr[12]);
	and (type_instr[0], stack, ~instr[10]); // type_instr[0] = push;
	and (type_instr[1] ,stack, instr[10]); // type_instr[1] = pop;
	nor Alu(alu, instr[15], instr[14], instr[13], ~instr[12]);
	or RegWrite(regWrite, type_instr[1], alu);
	or MemWrite(memWrite, call, type_instr[0]); //happens only in push and call operations.
	or Alu1(fsel_arr[2], type_instr[0], call); // sp = sp-1 only in push and call operations.
	and T1(t1, ~instr[15], instr[14]);
	and T2(t2, instr[15], ~instr[14], ~instr[13]);
	and T3(t3, ~instr[14], instr[13], ~instr[12]);
	and T4(t4, ~instr[15], ~instr[14], instr[13]);
	or Branch(branch, t1,t2,t3,t4);
	and Call(call, instr[15], ~instr[14], instr[13], instr[12]);
	and Return(ret, instr[15], instr[14], ~instr[13], ~instr[12]);
	and F0(f0, branch, dcond);
	or Mux1(mux_arr[0], call, ret, f0);
	assign mux_arr[1] = mux_arr[0];
	assign mux_arr[2] = mux_arr[0];
	assign mux_arr[3] = fsel_arr[2];
	or MUX5(mux_arr[4], type_instr[1], ret);
	assign mux_arr[5] = type_instr[0];
	or bandc(t5, branch, call);
	and ALU_1(fsel_arr[1], ~t5, instr[11]);
	and ALU_0(fsel_arr[0], ~t5, instr[10]);
	and sp_clk(clk_sp, clk, ~branch);
	and status_clk(clk_status, clk, alu);
	always @(*)
		begin
			$display("regWrite - %b, memWrite - %b, mux_arr - %b, fsel_arr - %b, dsel - %b, f0- %b, mux_arr[3] = %b", regWrite, memWrite, mux_arr, fsel_arr, dsel, f0, mux_arr[3]);
		end
endmodule

module datapath(wpa,check, check1, check2, clk, clk_sp, clk_reg, clk_status, reset,dsel, fsel_arr,mux_arr, memWrite, regWrite, instr, dcond, rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	input clk, reset, clk_sp, clk_status,clk_reg;
	input [2:0] fsel_arr;
	input [5:0] mux_arr;
	input [3:0] dsel;
	input [15:0] rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22;
	input [15:0] rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22;
	input memWrite, regWrite;
	output dcond;
	//output [5:0] bit_1;
	output [15:0] instr, check, check1, check2;
	wire [11:0] label;
	wire [1:0] fsel;
	wire cin, zin, vin, sin, ld_always, zout, zout1,cout, cout1,sout, sout1,vout, vout1;
	wire [15:0] instr;
	wire [15:0] X,Y,Z, pc_out, pc_in, sp_out, sp_in, regbank_in, regbank_out,mux0_in, mux4_out, padding_out;
	wire [15:0] mem_out, mux3_out;
	wire [5:0] mux_arr;
	wire [15:0] mux5_out;
	output [2:0] wpa;
	wire [11:0] padding_in;
 	assign ld_always = 1;
	assign fsel = fsel_arr[1:0];
	assign padding_in = instr[11:0];
	assign label = instr[11:0];
	assign wpa = instr[9:7];
	
	//assign check = mux5_out;
	//assign check1 = mux0_in;
	assign check2 = regbank_out;
	//assign bit_1 = mux_arr;
	reg_16_2 PC(pc_in, clk, ld_always, reset, pc_out);
	reg_16_1 SP(sp_in, clk_sp, ld_always, reset, sp_out);
	reg_bank REGISTER_BANK(mux4_out, check, check1, check2, clk_reg, reset, regbank_out, wpa, regWrite);
	alu2 sp_alu(sp_out,sp_in,fsel_arr[2]);
	alu1 pc_alu(pc_out,mux0_in);
	ALU alu(X, Y, check, Z, fsel, cin, zin, vin, sin);
	mux2to1 mux0(mux0_in,mux4_out,pc_in, mux_arr[0]);
	mux2to1 mux1(regbank_out,padding_out,X, mux_arr[1]);
	mux2to1 mux2(mem_out,mux0_in,Y, mux_arr[2]);
	mux2to1 mux3(sp_out,sp_in,mux3_out, mux_arr[3]);
	mux2to1 mux4(Z,mem_out,mux4_out, mux_arr[4]);
	mux2to1 mux5(mux0_in,regbank_out,mux5_out, 1);
	padding pad(padding_in, padding_out);
	data_Memory dmemory(mux3_out,check, memWrite, clk, mux5_out, mem_out, reset, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	instr_Memory imemory(pc_out,check, instr, reset, rom_instr0,rom_instr1,rom_instr2,rom_instr3,rom_instr4,rom_instr5,rom_instr6,rom_instr7,rom_instr8,rom_instr9, rom_instr10, rom_instr11,rom_instr12,rom_instr13,rom_instr14,rom_instr15,rom_instr16,rom_instr17,rom_instr18,rom_instr19, rom_instr20, rom_instr21, rom_instr22);
	selection select(dsel, zout, zout1, cout, cout1, vout, vout1, sout, sout1, dcond);
	dflipflop z_ff(zin, zout, zout1, clk_status, reset);
	dflipflop v_ff(vin, vout, vout1, clk_status, reset);
	dflipflop c_ff(cin, cout, cout1, clk_status, reset);
	dflipflop s_ff(sin, sout, sout1, clk_status, reset);
endmodule


module alu1(a,c);
	input [15:0] a;
	output reg [15:0] c;
	always @(*)
		begin
			c = a+2;
		end
endmodule

module alu2(a,c,fsel);
	input [15:0] a;
	output reg [15:0] c;
	input fsel;
	always @(*)
		begin
			case (fsel)
				1: begin
						c = a-2;
					end
				0: begin
						c = a+2;
					end
			endcase
		end
endmodule

module mux2to1(in1,in2,out, fsel);
	input [15:0] in1, in2;
	input fsel;
	output reg [15:0] out;
	always @(*)
		begin
			case (fsel)
				0:	begin
						out = in1;
					end
				1:	begin
						out = in2;
					end
			endcase
		end
endmodule

module padding (in, out);
	input [11:0] in;
	output [15:0] out;
	assign out[11:0] = in[11:0];
	assign out[12] = in[11];
	assign out[13] = in[11];
	assign out[14] = in[11];
	assign out[15] = in[11];
endmodule

module dflipflop ( in, qout, qout1, clk, reset);
	output reg qout, qout1;
	input in;
	input clk, reset;
	always @(posedge clk or posedge reset)
		begin
			if(reset)
				begin
					qout=0;
					qout1 = 1;
				end
			else
				begin
					qout= in;
					qout1 = ~in;
				end
		end
endmodule

module mux_821(out, sel, read,reg0,reg1, reg2,reg3,reg4,reg5,reg6,reg7);
	input [15:0] reg0,reg1, reg2,reg3,reg4,reg5,reg6,reg7;
	input read;
	input [2:0] sel;
	output reg [15:0] out;
	//assign out1 = out; 
	always @(*)
		begin
			//out = out;
			if(read)
				begin
					case(sel)
						3'b000:out = reg0;
						3'b001:out = reg1;
						3'b010:out = reg2;
						3'b011:out = reg3;
						3'b100:out = reg4;
						3'b101:out = reg5;
						3'b110:out = reg6;
						3'b111:out = reg7;
					endcase
				end
			else
				out = out;
		end
endmodule

module decoder3to8(wpa, wr, wrr);
	input [2:0] wpa;
	output reg[7:0] wr;
	input wrr;
	always @(wpa or wrr)
		begin
			wr = 0;
			if(wrr)
			begin
				case(wpa)
					3'b000:wr = 1;
					3'b001:wr = 2;
					3'b010:wr = 4;
					3'b011:wr = 8;
					3'b100:wr = 16;
					3'b101:wr = 32;
					3'b110:wr = 64;
					3'b111:wr = 128;
				endcase
			end
			else
				wr=0;
		end
endmodule

module reg_bank(in, check, check1, check2, clk, reset, out, wpa, wrr);
	wire [15:0] out_arr1,out_arr2,out_arr3,out_arr4,out_arr5,out_arr6,out_arr7,out_arr8,check,check1,check2;
	input [15:0] in;
	output [15:0] check, check1, check2;
	input clk, reset;
	wire [7:0] wr;
	input [2:0] wpa;
	input wrr;
	wire read;
	assign read = 1;
	output [15:0] out;
	wire [15:0] out1;
	assign check1 = out_arr1;
	assign check = out_arr2;
	decoder3to8 write(wpa, wr, wrr);
	reg_16 r0(in, clk, wr[0], reset, out_arr1);
	reg_16 r1(in, clk, wr[1], reset, out_arr2);
	reg_16 r2(in, clk, wr[2], reset, out_arr3);
	reg_16 r3(in, clk, wr[3], reset, out_arr4);
	reg_16 r4(in, clk, wr[4], reset, out_arr5);
	reg_16 r5(in, clk, wr[5], reset, out_arr6);
	reg_16 r6(in, clk, wr[6], reset, out_arr7);
	reg_16 r7(in, clk, wr[7], reset, out_arr8);
	mux_821 read_mod(out1, wpa, read, out_arr1,out_arr2,out_arr3,out_arr4,out_arr5,out_arr6, out_arr7, out_arr8);
	tristate gate(out1, out,read);
endmodule

module tristate(in, out, t);
	input wire[15:0] in;
	output [15:0] out;
	input t;
	/*always @(t)
		begin
			if(t)
				out = in;
			else
				out = 16'bz;
		end*/
	assign out[0]=(t) ? in[0] : 1'bZ;
	assign out[1]=(t) ? in[1] : 1'bZ;
	assign out[2]=(t) ? in[2] : 1'bZ;
	assign out[3]=(t) ? in[3] : 1'bZ;
	assign out[4]=(t) ? in[4] : 1'bZ;
	assign out[5]=(t) ? in[5] : 1'bZ;
	assign out[6]=(t) ? in[6] : 1'bZ;
	assign out[7]=(t) ? in[7] : 1'bZ;
	assign out[8]=(t) ? in[8] : 1'bZ;
	assign out[9]=(t) ? in[9] : 1'bZ;
	assign out[10]=(t) ? in[10] : 1'bZ;
	assign out[11]=(t) ? in[11] : 1'bZ;
	assign out[12]=(t) ? in[12] : 1'bZ;
	assign out[13]=(t) ? in[13] : 1'bZ;
	assign out[14]=(t) ? in[14] : 1'bZ;
	assign out[15]=(t) ? in[15] : 1'bZ;
endmodule

module reg_16(in, clk, ld, reset, out);
	input wire [15:0] in;
	input clk, ld, reset;
	output reg [15:0] out;
	always @(posedge clk or  posedge reset )
		begin
			if(reset)
				out = 16'b0;
			else
				begin
					if(ld)
						out = in;
					else
						out = out;
				end	
		end
endmodule

module reg_16_1(in, clk, ld, reset, out);
	input wire [15:0] in;
	input clk, ld, reset;
	output reg [15:0] out;
	always @(posedge clk or  posedge reset )
		begin
			if(reset)
				out = 65528;
			else
				begin
					if(ld)
						out = in;
					else
						out = out;
				end	
		end
endmodule

module reg_16_2(in, clk, ld, reset, out);
	input wire [15:0] in;
	input clk, ld, reset;
	output reg [15:0] out;
	always @(posedge clk or  posedge reset )
		begin
			if(reset)
				out = 0;
			else
				begin
					if(ld)
						out = in;
					else
						out = out;
				end	
		end
endmodule

module mux_921(uncond, zin, zin1, cin, cin1, vin, vin1, sin, sin1, out, dsel);
	input [3:0] dsel;
	input zin, zin1, cin, cin1, vin, vin1, sin, sin1, uncond;
	output reg out;
	always @*
		begin
			case (dsel)
				2:
					begin
						out = uncond;
					end
				3:
					begin
						out  = cin;
					end
				4:
					begin
						out = cin1;
					end
				5:
					begin
						out = zin;
					end
				6:
					begin
						out = zin1;
					end
				7:
					begin
						out = vin;
					end
				8:
					begin
						out = vin1;
					end
				9:
					begin
						out = sin;
					end
				10:
					begin
						out = sin1;
					end
			endcase
		end
endmodule

module selection ( dsel, zin, zin1, cin, cin1, vin, vin1, sin, sin1, out);
	input zin, zin1, cin, cin1, vin, vin1, sin, sin1;
	input [3:0] dsel;
	wire uncond;
	output out;
	assign uncond = 1;
	mux_921 select(uncond, zin, zin1, cin, cin1, vin, vin1, sin, sin1, out);
endmodule

module data_Memory(address,check, write, clk, in_data, out_data, reset, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	input [15:0] address, in_data, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22;
	input  write, clk, reset;
	output [15:0] out_data;
	reg[7:0] memory[65535:0];
	output [15:0] check;
	//assign check = address;
	assign out_data = {memory[address],memory[{address[15:1],1'b1}]};
	always @(posedge clk or posedge reset)
		begin
			if(reset)
				begin
					memory[0]=rom_mem0[15:8];
					memory[1]=rom_mem0[7:0];
					memory[2]=rom_mem1[15:8];
					memory[3]=rom_mem1[7:0];
					memory[4]=rom_mem2[15:8];
					memory[5]=rom_mem2[7:0];
					memory[6]=rom_mem3[15:8];
					memory[7]=rom_mem3[7:0];
					memory[8]=rom_mem4[15:8];
					memory[9]=rom_mem4[7:0];
					memory[10]=rom_mem5[15:8];
					memory[11]=rom_mem5[7:0];
					memory[12]=rom_mem6[15:8];
					memory[13]=rom_mem6[7:0];
					memory[14]=rom_mem7[15:8];
					memory[15]=rom_mem7[7:0];
					memory[16]=rom_mem8[15:8];
					memory[17]=rom_mem8[7:0];
					memory[18]=rom_mem9[15:8];
					memory[19]=rom_mem9[7:0];
					memory[20]=rom_mem10[15:8];
					memory[21]=rom_mem10[7:0];
					memory[22]=rom_mem11[15:8];
					memory[23]=rom_mem11[7:0];
					memory[24]=rom_mem12[15:8];
					memory[25]=rom_mem12[7:0];
					memory[26]=rom_mem13[15:8];
					memory[27]=rom_mem13[7:0];
					memory[28]=rom_mem14[15:8];
					memory[29]=rom_mem14[7:0];
					memory[30]=rom_mem15[15:8];
					memory[31]=rom_mem15[7:0];
					memory[32]=rom_mem16[15:8];
					memory[33]=rom_mem16[7:0];
					memory[34]=rom_mem17[15:8];
					memory[35]=rom_mem17[7:0];
					memory[36]=rom_mem18[15:8];
					memory[37]=rom_mem18[7:0];
					memory[38]=rom_mem19[15:8];
					memory[39]=rom_mem19[7:0];
					memory[65532] = rom_mem20[15:8];
					memory[65533] = rom_mem20[7:0];
					memory[65530] = rom_mem21[15:8];
					memory[65531] = rom_mem21[7:0];
					memory[65528] = rom_mem22[15:8];
					memory[65529] = rom_mem22[7:0];
				end
			if(write)
				begin
					memory[address] = in_data[15:8];
					memory[{address[15:1],1'b1}] = in_data[7:0];
					$display("memory[%h]=%h%h",address,memory[address],memory[{address[15:1],1'b1}]);
				end
		end
endmodule

module instr_Memory(address,check, instr, reset, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22);
	input [15:0] address, rom_mem0,rom_mem1,rom_mem2,rom_mem3,rom_mem4,rom_mem5,rom_mem6,rom_mem7,rom_mem8,rom_mem9, rom_mem10, rom_mem11,rom_mem12,rom_mem13,rom_mem14,rom_mem15,rom_mem16,rom_mem17,rom_mem18,rom_mem19, rom_mem20, rom_mem21, rom_mem22;
	input reset;
	output [15:0] instr;
	reg[7:0] memory[65535:0];
	output [15:0] check;
	//assign check = instr;
	assign instr = {memory[address],memory[{address[15:1],1'b1}]};
	always @(posedge reset)
		begin
			if(reset)
				begin
					memory[0]=rom_mem0[15:8];
					memory[1]=rom_mem0[7:0];
					memory[2]=rom_mem1[15:8];
					memory[3]=rom_mem1[7:0];
					memory[4]=rom_mem2[15:8];
					memory[5]=rom_mem2[7:0];
					memory[6]=rom_mem3[15:8];
					memory[7]=rom_mem3[7:0];
					memory[8]=rom_mem4[15:8];
					memory[9]=rom_mem4[7:0];
					memory[10]=rom_mem5[15:8];
					memory[11]=rom_mem5[7:0];
					memory[12]=rom_mem6[15:8];
					memory[13]=rom_mem6[7:0];
					memory[14]=rom_mem7[15:8];
					memory[15]=rom_mem7[7:0];
					memory[16]=rom_mem8[15:8];
					memory[17]=rom_mem8[7:0];
					memory[18]=rom_mem9[15:8];
					memory[19]=rom_mem9[7:0];
					memory[20]=rom_mem10[15:8];
					memory[21]=rom_mem10[7:0];
					memory[22]=rom_mem11[15:8];
					memory[23]=rom_mem11[7:0];
					memory[24]=rom_mem12[15:8];
					memory[25]=rom_mem12[7:0];
					memory[26]=rom_mem13[15:8];
					memory[27]=rom_mem13[7:0];
					memory[28]=rom_mem14[15:8];
					memory[29]=rom_mem14[7:0];
					memory[30]=rom_mem15[15:8];
					memory[31]=rom_mem15[7:0];
					memory[32]=rom_mem16[15:8];
					memory[33]=rom_mem16[7:0];
					memory[34]=rom_mem17[15:8];
					memory[35]=rom_mem17[7:0];
					memory[36]=rom_mem18[15:8];
					memory[37]=rom_mem18[7:0];
					memory[38]=rom_mem19[15:8];
					memory[39]=rom_mem19[7:0];
					memory[65532] = rom_mem20[15:8];
					memory[65533] = rom_mem20[7:0];
					memory[65530] = rom_mem21[15:8];
					memory[65531] = rom_mem21[7:0];
					memory[65528] = rom_mem22[15:8];
					memory[65529] = rom_mem22[7:0];
				end
		end
endmodule

module ALU(X, Y, check, Z, fsel, cin, zin, vin, sin);
	input [15:0] X, Y;
	input [1:0] fsel;
	output [15:0]check;
	output reg [15:0] Z;
	//assign check = Y;
	output cin, zin, vin, sin;
	reg  ci, ci_1;
	reg [16:0] temp;
	reg [15:0] temp1;
	assign cin = ci;
	wire cin_1;
	assign cin_1 = ci_1;
	assign sin = Z[15];
	//wire zout, zout1, vout, vout1, cout, cout1, sout, sout1;
	always @*
		begin
			case (fsel)
				2'b00: 
							begin
							temp = X + Y;
							temp1 = X[14:0] + Y[14:0];
							ci_1 = temp1[15];
							Z = X+Y;
							ci = temp[16];
							end
				2'b01: 
							begin
							Z = (Y^16'b1111111111111111) + 1;
							ci = 0;
							end
				2'b11: 
							begin
							Z = ~Y;
							ci = 0;
							end
				2'b10: 
							begin
							Z = X|Y;
							ci = 0;
							end
			endcase
		end
	//status_det status(Z, ci, ci_1, clk ,reset, vin ,zin);
	nor zero_det(zin,Z[0],Z[1],Z[2],Z[3],Z[4],Z[5],Z[6],Z[7],Z[8],Z[9],Z[10],Z[11],Z[12],Z[13],Z[14],Z[15]); 
	xor over_flow(vin, cin, cin_1);
endmodule
