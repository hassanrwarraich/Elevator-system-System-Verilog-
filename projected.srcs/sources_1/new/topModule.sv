`timescale 1ns / 1ps
module topModule(input clk, input  [3:0] keyb_col, input execute, input reset_t, input sys_reset,
    output reset_out, OE, SH_CP, ST_CP, DS, a, b, c, d, e, f, g, dp, output [3:0] an, output [3:0] keyb_row, output [7:0] col_select
 );

logic [2:0] col_num;
logic [7:0] red_vect_in, blue_vect_in, green_vect_in;
assign green_vect_in = 8'b00000000;
logic col_data_capture;

display_8x8 display_8x8_0(
	clk,	
	red_vect_in,
	green_vect_in,
	blue_vect_in,
	col_data_capture, 
	col_num,
	reset_out,
	OE,
	SH_CP,
	ST_CP,
	DS,
	col_select  
);

logic [3:0] key_value;
keypad4X4 keypad4X4_inst0(
	.clk(clk),
	.keyb_row(keyb_row), 
	.keyb_col(keyb_col), 
    .key_value(key_value), 
    .key_valid(key_valid)  
);

logic [3:0] in0 = 4'h0; 
logic [3:0] in1 = 4'h0; 
logic [3:0] in2 = 4'h0; 
logic [3:0] in3 = 4'h0; 

SevSeg_4digit SevSeg_4digit_inst0(
	.clk(clk),
	.in3(in3), .in2(in2), .in1(in1), .in0(in0), 
	.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), 
	.an(an)    
);

logic[2:0] people = 3'd0;
logic[1:0] pos = 2'd0;
logic[3:0] floor3 = 4'd0;
logic[3:0] floor2 = 4'd0;
logic[3:0] floor1 = 4'd0;
logic [34:0] counter = 35'd0;
logic [34:0] count = 35'd0;
logic [34:0] counter2 = 35'd0;
logic [34:0] count2 = 35'd0;
logic [34:0] count3 = 35'd0;
logic [34:0] count4 = 35'd0;
logic [34:0] count5 = 35'd0;
logic [34:0] count6 = 35'd0;
logic [34:0] count7 = 35'd0;
logic [34:0] count8 = 35'd0;
logic [34:0] count9 = 35'd0;
logic [34:0] count10 = 35'd0;
logic [34:0] count11 = 35'd0;
logic [34:0] count12 = 35'd0;
logic [34:0] count13 = 35'd0;
logic [34:0] count14 = 35'd0;
logic [34:0] count15 = 35'd0;
logic [34:0] count16 = 35'd0;
logic [34:0] count17 = 35'd0;
logic [34:0] count18 = 35'd0;
logic [34:0] count19 = 35'd0;
logic [34:0] count20 = 35'd0;
logic [34:0] count21 = 35'd0;
logic [34:0] count22 = 35'd0;
logic [34:0] ctr1 = 35'd0;
logic [34:0] ctr2 = 35'd0;
logic [34:0] ctr3 = 35'd0;
logic [34:0] ctr4 = 35'd0;
logic prog_enable = 1'b1; 
logic enable = 1'b0;
logic[3:0] trips = 4'd0;
logic[5:0] store = (floor1 + floor2 + floor3);
logic roko = 1'b0;

displaying(col_num, pos, people, floor1, floor2, floor3, red_vect_in, blue_vect_in);

always_ff@ (posedge clk)
begin  
if (prog_enable == 1'b0)
begin
    if (floor1 + floor2 + floor3 + people > 0 & roko == 1'b0)
    begin
        ctr2 <= ctr2 +1;
            if (ctr2 == 35'd25000000)
            begin                    
                if (enable == 1'b1)
                begin
                    if (in3 > 0)
                    begin
                        in3 <= in3 - 4'b1;
                        ctr2 <= 35'd0;
                    end
                    else
                    begin
                        in3 <= 5;
                        ctr2 <= 35'd0;
                    end
                end
                else
                begin
                    if(in3 < 5)
                    begin
                        in3 <= in3 + 4'b1;
                        ctr2 <= 35'd0;
                    end
                    else
                    begin
                        in3 <= 4'b0;
                        ctr2 <= 35'd0;
                    end
                end
           end
    end
end
    
      
    if (reset_t)
    begin
        in0 <= 4'h0; 
        in1 <= 4'h0; 
        in2 <= 4'h0; 
        in3 <= 4'h0;
        ctr1 <= 35'd0;
    end
    
    if(sys_reset)
    begin 
        people <= 2'b0;
        pos <= 2'b0;
        roko <= 1'b0;
        floor3 <= 4'b0;
        floor2 <= 4'b0;
        floor1 <= 4'b0;
        trips <= 4'd0;
        in0 <= 4'h0; 
        in1 <= 4'h0; 
        in2 <= 4'h0; 
        in3 <= 4'h0;
        enable <= 1'b0;
        store <= 6'd0;
        prog_enable <= 1'b1; 
        counter <= 35'd0;
        count <= 35'd0;
        counter2 <= 35'd0;
        count2 <= 35'd0;
        count3 <= 35'd0;
        count4 <= 35'd0;
        count5 <= 35'd0;
        count6 <= 35'd0;
        count7 <= 35'd0;
        count8 <= 35'd0;
        count9 <= 35'd0;
        count10 <= 35'd0;
        count11 <= 35'd0;
        count12 <= 35'd0;
        count13 <= 35'd0;
        count14 <= 35'd0;
        count15 <= 35'd0;
        count16 <= 35'd0;
        count17 <= 35'd0;
        count18 <= 35'd0;
        count19 <= 35'd0;
        count20 <= 35'd0;
        count21 <= 35'd0;
        count22 <= 35'd0;
        ctr1 <= 35'd0;
    end
    
    if (execute) 
    begin
        prog_enable <= 1'b0;
        trips <= 4'd0;
        store <= (floor1 + floor2 + floor3);
        if (store % 6'd4 == 6'd0)
        begin
            trips <= store / 4;
        end
        else 
        begin
            trips <= (store / 4) + 1;
        end
    end
    
    if (prog_enable == 1'b1)
    begin
        if (key_valid)
         begin
            case(key_value) 
            4'b01_01:  
                begin
                    if(floor1 > 4'd0)
                    begin
                        floor1 <= floor1 - 4'd1;
                   end
                end  
            4'b01_00:
                 begin 
                     if(floor1 < 4'd12)
                     begin
                         floor1 <= floor1 + 4'd1;
                     end
                 end       
            4'b10_01:  
                 begin 
                     if(floor2 > 4'd0)
                     begin
                         floor2 <= floor2 - 4'd1;
                     end
                 end 
            4'b10_00:  
                 begin 
                     if(floor1 < 4'd12)
                     begin
                         floor2 <= floor2 + 4'd1;
                         
                     end
                 end     
            4'b11_01:  
                 begin 
                      if(floor3 > 4'd0)
                      begin
                          floor3 <= floor3 - 4'd1;
                          
                      end
                 end   
            4'b11_00:  
                 begin 
                      if(floor3 < 4'd12)
                      begin
                           floor3 <= floor3 + 4'd1;
                      end
                 end
            endcase
         end
    end
    else
    
        
        if (floor1 + floor2 + floor3 + people > 0)
        begin
            ctr1 <= ctr1 + 1;
            if(ctr1 >= 35'd100000000)
            begin
                if(in0 < 9) 
                begin
                    in0 <= in0 + 1;
                    ctr1 <= 35'd0;
                end
                else if(in1 < 9)
                begin
                    in0 <= 0;
                    in1 <= in1 + 1;
                    ctr1 <= 35'd0;
                end 
                else if(in2 < 9)
                begin
                    in0 <= 0;
                    in1 <= 0;
                    in2 <= in2 + 1;
                    ctr1 <= 35'd0;
                end
                else
                begin
                    in0 <= 0;
                    in1 <= 0;
                    in2 <= 0;
                    ctr1 <= 35'd0;
                end
            end
        end
        
        
        
        
        begin 
            if (trips > 0)
            begin
                if (enable == 1'b0)
                begin
                    if(floor1 > 0)
                    begin
                        counter <= counter + 1;
                        if (counter >= 35'd300000000)
                        begin
                            if (pos == 2'b00) pos <= 2'b01;
                                if (floor1 < 4 - people)
                                begin
                                    count5 <= count5 + 1;
                                    roko <= 1'b1;
                                    if (count5 >= 35'd200000000)
                                    begin
                                        roko <= 1'b0;
                                        if(1) people <= people + floor1;
                                        if(1) floor1 <= 4'd0;
                                        if(floor1 + floor2 + floor3 == 6'd0) enable <= 1'b1;
                                        if(floor2 > 4'd0)
                                        begin
                                            count4 <= count4 + 1;
                                            if (count4 >= 35'd300000000)
                                            begin
                                                if(pos == 2'b01) pos <= 2'b10;
                                                if (floor2 < 4 - people)
                                                begin
                                                    count10 <= count10 + 1;
                                                    if (count10 >= 35'd200000000)
                                                    begin
                                                        if(1) people <= people + floor2;
                                                        if(1) floor2 <= 4'd0;
                                                        if(floor2 + floor3 == 0) enable <= 1'b1;
                                                        if(floor3 > 0)
                                                        begin
                                                            count6 <= count6 + 1;
                                                            if(count6 >= 35'd300000000)
                                                            begin
                                                                if(pos == 2'b10) pos <= 2'b11;
                                                                if(floor3 < 4 - people)
                                                                begin 
                                                                    count7 <= count7 + 1;
                                                                    if (count7 >= 35'd200000000)
                                                                    begin
                                                                        if(1) people <= people + floor3;
                                                                        if(1) floor3 <= 4'd0;
                                                                        enable <= 1'b1;
                                                                    end
                                                                end
                                                                else
                                                                begin
                                                                    count8 <= count8 + 1;
                                                                    if (count8 >= 35'd200000000)
                                                                    begin
                                                                        if(1) floor3 <= floor3 - (4-people);
                                                                        if(1) people <= 3'd4;
                                                                        enable <= 1'b1;                           
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            else
                                            begin
                                                count3 <= count3 + 1;
                                                if (count3 >= 35'd200000000)
                                                begin
                                                    if(1) floor2 <= floor2 - (3'd4-people);
                                                    if(1) people <= 3'd4;
                                                    enable <= 1'b1;                           
                                                end
                                            end
                                        end
                                    end
                                    else if(floor3 > 4'd0)
                                    begin
                                        count20 <= count20 + 1;
                                        if (count20 >= (35'd300000000)*2)
                                        begin
                                            if(pos == 2'b01) pos <= 2'b11;
                                            begin
                                                if (floor3 < 4 - people)
                                                begin
                                                    count21 <= count21 + 1;
                                                    if (count21 >= 35'd200000000)
                                                    begin
                                                        if(1) people <= people + floor3;
                                                        if(1) floor3 <= 4'd0;
                                                        enable <= 1'b1;
                                                    end
                                                end
                                                else
                                                begin
                                                    count22 <= count22 + 1;
                                                    if (count22 >= 35'd200000000)
                                                    begin
                                                        if(1) floor3 <= floor3 - (4 - people);
                                                        if(1) people <= 3'd4;
                                                        enable <= 1'b1;
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end 
                            else
                            begin
                                count <= count + 1;
                                if (count >= 35'd200000000)
                                begin
                                    if(1) floor1 <= floor1 - 4;
                                    if(1) people <= 3'd4;
                                    enable <= 1'b1;
                                end
                            end
                        end
                    end
                    else if (floor2 > 0)
                    begin
                         count11 <= count11 + 1;
                         if (count11 >= (35'd300000000)*(2'd2 - pos))
                         begin
                            pos <= 2'b10;
                            if (floor2 < 4 - people)
                            begin
                                count13 <= count13 + 1;
                                roko <= 1'b1;
                                if(count13 >= 35'd200000000)
                                begin
                                    roko <= 1'b0;   
                                    if(1) people <= people + floor2;
                                    if(1) floor2 <= 4'd0;
                                    if(floor3 == 0) enable <= 1'b1;
                                    if(floor3 < 4 - people)
                                    begin
                                        count14 <= count14 + 1;
                                        if(count14 >= 35'd300000000)
                                        begin
                                            if(pos == 2'b10) pos <= 2'b11;
                                            count15 <= count15 + 1;
                                            if(count15 >= 35'd200000000)
                                            begin
                                                if(1) people <= people + floor3;
                                                if(1) floor3 <= 4'd0;
                                                enable <= 1'b1;
                                            end
                                        end
                                    end
                                    else
                                         count16 <= count16 + 1;
                                         if (count16 >= 35'd200000000)
                                         begin
                                              if(1) floor3 <= floor3 - 4 + people;
                                              if(1) people <= 3'd4;
                                              enable <= 1'b1;                           
                                         end
                                    end
                                end
                                else
                                begin
                                    count12 <= count12 + 1;
                                    if (count12 >= 35'd200000000)
                                    begin
                                        floor2 <= floor2 - (4 - people);
                                        people <= 3'd4;
                                        enable <= 1'b1;
                                    end
                                end
                            end 
                        end
                        else if (floor3 > 0)
                        begin
                            count17 <= count17 + 1;
                            if (count17 >= (35'd300000000)*(2'd3 - pos))
                            begin
                                pos <= 2'b11;
                                if (floor3 < 4 - people)
                                begin
                                    count19 <= count19 + 1;
                                    if (count19 >= 35'd200000000)
                                    begin
                                        if(1) people <= people + floor3;
                                        if(1) floor3 <= 4'd0;
                                        enable <= 1'b1;
                                    end
                                end
                                else
                                begin
                                    count18 <= count18 + 1;
                                    if (count18 >= 35'd200000000)
                                    begin
                                        floor3 <= floor3 - (4-people);
                                        people <= 3'd4;
                                        enable <= 1'b1;
                                    end
                                end
                            end
                        end
                    end
                    else if(floor1 + floor2 + floor3 == 6'd0) enable <= 1'b1;
               //unload
                if (enable == 1'b1)
                begin
                    counter2 <= counter2 + 1;
                    if (counter2 >= (35'd300000000) * pos)
                    begin
                        pos <= 2'd0;
                        count2 <= count2 + 1;
                        roko <= 1'b1;
                        if (count2 >= 35'd200000000)
                        begin
                            roko <= 1'b0;
                            people <= 3'd0;
                            enable <= 1'b0;
                            trips <= trips - 1; 
                            counter <= 35'd0;
                            count <= 35'd0;
                            counter2 <= 35'd0;
                            count2 <= 35'd0;
                            count3 <= 35'd0;
                            count4 <= 35'd0;
                            count5 <= 35'd0;
                            count6 <= 35'd0;
                            count7 <= 35'd0;
                            count8 <= 35'd0;
                            count9 <= 35'd0;
                            count10 <= 35'd0;
                            count11 <= 35'd0;
                            count12 <= 35'd0;
                            count13 <= 35'd0;
                            count14 <= 35'd0;
                            count15 <= 35'd0;
                            count16 <= 35'd0;
                            count17 <= 35'd0;
                            count18 <= 35'd0;
                            count19 <= 35'd0;
                            count20 <= 35'd0;
                            count21 <= 35'd0;
                            count22 <= 35'd0;
                        end
                    end
                end     
            end
        end
end   
 
endmodule	