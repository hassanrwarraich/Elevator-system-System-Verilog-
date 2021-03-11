module displaying (input [2:0] col_num, input [1:0] pos, input [2:0] people,input [3:0] floor1,floor2,floor3, output logic [7:0] red_vect_in, blue_vect_in);



always_comb
begin
    blue_vect_in = 8'b00000000;
    red_vect_in = 8'b00000000;
    case(col_num)
    3'b000:
    begin
        case(pos)
            2'b00:
                begin
                case(people)
                    3'b000:
                    begin blue_vect_in <= 8'b00000011; red_vect_in <= 8'b00000000; end
                    3'b001:
                     begin blue_vect_in <= 8'b00000001; red_vect_in <= 8'b00000010; end
                    3'b010:
                    begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b00000011; end
                    3'b011:
                     begin blue_vect_in <= 8'b0000000; red_vect_in <= 8'b00000011; end
                    3'b100:
                    begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b00000011; end
                endcase
                end
            2'b01:
                begin
                case(people)
                   3'b000:
                    begin blue_vect_in <= 8'b00001100; red_vect_in <= 8'b00000000; end
                    3'b001:
                     begin blue_vect_in <= 8'b00000100; red_vect_in <= 8'b00001000; end
                    3'b010:
                    begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00001100; end
                    3'b011:
                     begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00001100; end
                    3'b100:
                    begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00001100; end
                endcase
                end
             2'b10:
             begin
                case(people)
                    3'b000:
                    begin blue_vect_in <= 8'b00110000; red_vect_in <= 8'b00000000; end
                    3'b001:
                     begin blue_vect_in <= 8'b00100000; red_vect_in <= 8'b00010000; end
                    3'b010:             
                    begin  blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00110000; end
                    3'b011:             
                    begin  blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00110000; end
                    3'b100:             
                    begin  blue_vect_in <= 8'b00000000; red_vect_in <= 8'b00110000; end
                endcase
               end 
             2'b11:
             begin
                case(people)
                   3'b000:
                    begin blue_vect_in <= 8'b11000000; red_vect_in <= 8'b00000000; end
                    3'b001:
                     begin blue_vect_in <= 8'b10000000; red_vect_in <= 8'b01000000; end
                    3'b010:
                    begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b11000000; end
                    3'b011:
                    begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b11000000; end
                    3'b100:
                    begin blue_vect_in <= 8'b00000000; red_vect_in <= 8'b11000000; end
                endcase
             end 
        endcase
        end
        
        
        3'b001:
        begin
            case(pos)
            2'b00:
                    begin
                    case(people)
                        3'b000:
                        begin blue_vect_in <= 8'b00000011; red_vect_in <= 8'b00000000; end
                        3'b011:
                         begin blue_vect_in <= 8'b00000001; red_vect_in <= 8'b00000010; end
                        3'b100:
                        begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b00000011; end
                        3'b001:
                        begin blue_vect_in <= 8'b00000011;  red_vect_in <= 8'b00000000; end
                        3'b010:
                        begin blue_vect_in <= 8'b00000011;  red_vect_in <= 8'b00000000; end
                    endcase
                    end
                2'b01:
                    begin
                    case(people)
                       3'b000:
                       begin blue_vect_in <= 8'b00001100; red_vect_in <= 8'b00000000; end
                       3'b011:
                        begin blue_vect_in <= 8'b00000100; red_vect_in <= 8'b00001000; end
                       3'b100:
                       begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b00001100; end
                       3'b001:
                       begin blue_vect_in <= 8'b00001100;  red_vect_in <= 8'b00000000; end
                       3'b010:
                       begin blue_vect_in <= 8'b00001100;  red_vect_in <= 8'b00000000; end
                    endcase
                    end
                 2'b10:
                 begin
                    case(people)
                        3'b000:
                        begin blue_vect_in <= 8'b00110000; red_vect_in <= 8'b00000000; end
                        3'b011:
                         begin blue_vect_in <= 8'b00010000; red_vect_in <= 8'b00100000; end
                        3'b100:
                        begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b00110000; end
                        3'b001:
                        begin blue_vect_in <= 8'b00110000;  red_vect_in <= 8'b00000000; end
                        3'b010:
                        begin blue_vect_in <= 8'b00110000;  red_vect_in <= 8'b00000000; end
                    endcase
                   end 
                 2'b11:
                 begin
                    case(people)
                       3'b000:
                       begin blue_vect_in <= 8'b11000000; red_vect_in <= 8'b00000000; end
                       3'b011:
                        begin blue_vect_in <= 8'b10000000; red_vect_in <= 8'b01000000; end
                       3'b100:
                       begin blue_vect_in <= 8'b00000000;  red_vect_in <= 8'b11000000; end
                       3'b001:
                       begin blue_vect_in <= 8'b11000000;  red_vect_in <= 8'b00000000; end
                       3'b010:
                       begin blue_vect_in <= 8'b11000000;  red_vect_in <= 8'b00000000; end
                    endcase
                 end 
            endcase
            end
            
       3'b010:
       begin
            if (floor3 == 4'd1) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd1) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd1) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd1) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd1) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd1) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd1) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd1) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd1) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00;  
       end
       
       
       3'b011:
       begin
            if (floor3 == 4'd3) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd3) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd3) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd3) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd3) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd3) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd3) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd3) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd3) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00; 
       end
       
       3'b100:
       begin
            if (floor3 == 4'd5) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd5) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd5) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd5) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd5) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd5) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd5) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd5) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd5) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00;
       end

       3'b101:
       begin
            if (floor3 == 4'd7) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd7) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd7) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd7) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd7) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd7) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd7) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd7) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd7) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00;
       end
       
       3'b110:
       begin
            if (floor3 == 4'd9) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd9) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd9) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd9) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd9) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd9) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd9) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd9) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd9) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00;
       end
       
       3'b111:
       begin
            if (floor3 == 4'd11) red_vect_in[7:6] <= 2'b10;
            else if (floor3 >= 4'd11) red_vect_in[7:6] <= 2'b11;
            else if (floor3 <= 4'd11) red_vect_in[7:6] <= 2'b00;
            if (floor2 == 4'd11) red_vect_in[5:4] <= 2'b10;
            else if (floor2 >= 4'd11) red_vect_in[5:4] <= 2'b11;
            else if (floor2 <= 4'd11) red_vect_in[5:4] <= 2'b00;
            if (floor1 == 4'd11) red_vect_in[3:2] <= 2'b10;
            else if (floor1 >= 4'd11) red_vect_in[3:2] <= 2'b11;
            else if (floor1 <= 4'd11) red_vect_in[3:2] <= 2'b00;
            red_vect_in[1:0] <= 2'b00;
       end

 
    endcase
        
end



endmodule