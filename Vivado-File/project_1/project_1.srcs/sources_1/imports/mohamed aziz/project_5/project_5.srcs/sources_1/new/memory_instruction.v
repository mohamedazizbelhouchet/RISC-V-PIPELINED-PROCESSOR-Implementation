module instruction_memory( 
	
    input  [31:0] PCF,
	 
    output  [31:0] RD );
	 
	 reg [7:0] mem [255:0]; /*= {  {8'h00}, {8'h11}, {8'h22}, {8'h33}, {8'h44}, {8'h55}, {8'h66}, {8'h77},
              {8'h88}, {8'h99}, {8'hAA}, {8'hBB}, {8'hCC}, {8'hDD}, {8'hEE}, {8'hFF} ,
            // Repeat as needed
            { {1024-16{8'h00}} } }  ;*/
	 reg [31:0] temp_data_out;
	 always @(*) begin 
			temp_data_out = {mem[PCF+3],mem[PCF+2],mem[PCF+1],mem[PCF]};
		end
		 

    // Assign the temporary variable to the output
    assign RD = temp_data_out;
     
	 /*always @(posedge clk) begin
        if (write_enable) 
            mem[PCF] <= data_in[7:0];
				mem[PCF+1] <= data_in[15:8];
				mem[PCF+2] <= data_in[23:16];
				mem[PCF+3] <= data_in[31:24];		
        end*/

    initial begin
    mem[ 0 ]=8'd 0  ;
mem[ 1 ]=8'd 1  ;
mem[ 2 ]=8'd 2  ;
mem[ 3 ]=8'd 3  ;
mem[ 4 ]=8'd 4  ;
mem[ 5 ]=8'd 5  ;
mem[ 6 ]=8'd 6  ;
mem[ 7 ]=8'd 7  ;
mem[ 8 ]=8'd 8  ;
mem[ 9 ]=8'd 9  ;
mem[ 10 ]=8'd 10  ;
mem[ 11 ]=8'd 11  ;
mem[ 12 ]=8'd 12  ;
mem[ 13 ]=8'd 13  ;
mem[ 14 ]=8'd 14  ;
mem[ 15 ]=8'd 15  ;
mem[ 16 ]=8'd 16  ;
mem[ 17 ]=8'd 17  ;
mem[ 18 ]=8'd 18  ;
mem[ 19 ]=8'd 19  ;
mem[ 20 ]=8'd 20  ;
mem[ 21 ]=8'd 21  ;
mem[ 22 ]=8'd 22  ;
mem[ 23 ]=8'd 23  ;
mem[ 24 ]=8'd 24  ;
mem[ 25 ]=8'd 25  ;
mem[ 26 ]=8'd 26  ;
mem[ 27 ]=8'd 27  ;
mem[ 28 ]=8'd 28  ;
mem[ 29 ]=8'd 29  ;
mem[ 30 ]=8'd 30  ;
mem[ 31 ]=8'd 31  ;
mem[ 32 ]=8'd 32  ;
mem[ 33 ]=8'd 33  ;
mem[ 34 ]=8'd 34  ;
mem[ 35 ]=8'd 35  ;
mem[ 36 ]=8'd 36  ;
mem[ 37 ]=8'd 37  ;
mem[ 38 ]=8'd 38  ;
mem[ 39 ]=8'd 39  ;
mem[ 40 ]=8'd 40  ;
mem[ 41 ]=8'd 41  ;
mem[ 42 ]=8'd 42  ;
mem[ 43 ]=8'd 43  ;
mem[ 44 ]=8'd 44  ;
mem[ 45 ]=8'd 45  ;
mem[ 46 ]=8'd 46  ;
mem[ 47 ]=8'd 47  ;
mem[ 48 ]=8'd 48  ;
mem[ 49 ]=8'd 49  ;
mem[ 50 ]=8'd 50  ;
mem[ 51 ]=8'd 51  ;
mem[ 52 ]=8'd 52  ;
mem[ 53 ]=8'd 53  ;
mem[ 54 ]=8'd 54  ;
mem[ 55 ]=8'd 55  ;
mem[ 56 ]=8'd 56  ;
mem[ 57 ]=8'd 57  ;
mem[ 58 ]=8'd 58  ;
mem[ 59 ]=8'd 59  ;
mem[ 60 ]=8'd 60  ;
mem[ 61 ]=8'd 61  ;
mem[ 62 ]=8'd 62  ;
mem[ 63 ]=8'd 63  ;
mem[ 64 ]=8'd 64  ;
mem[ 65 ]=8'd 65  ;
mem[ 66 ]=8'd 66  ;
mem[ 67 ]=8'd 67  ;
mem[ 68 ]=8'd 68  ;
mem[ 69 ]=8'd 69  ;
mem[ 70 ]=8'd 70  ;
mem[ 71 ]=8'd 71  ;
mem[ 72 ]=8'd 72  ;
mem[ 73 ]=8'd 73  ;
mem[ 74 ]=8'd 74  ;
mem[ 75 ]=8'd 75  ;
mem[ 76 ]=8'd 76  ;
mem[ 77 ]=8'd 77  ;
mem[ 78 ]=8'd 78  ;
mem[ 79 ]=8'd 79  ;
mem[ 80 ]=8'd 80  ;
mem[ 81 ]=8'd 81  ;
mem[ 82 ]=8'd 82  ;
mem[ 83 ]=8'd 83  ;
mem[ 84 ]=8'd 84  ;
mem[ 85 ]=8'd 85  ;
mem[ 86 ]=8'd 86  ;
mem[ 87 ]=8'd 87  ;
mem[ 88 ]=8'd 88  ;
mem[ 89 ]=8'd 89  ;
mem[ 90 ]=8'd 90  ;
mem[ 91 ]=8'd 91  ;
mem[ 92 ]=8'd 92  ;
mem[ 93 ]=8'd 93  ;
mem[ 94 ]=8'd 94  ;
mem[ 95 ]=8'd 95  ;
mem[ 96 ]=8'd 96  ;
mem[ 97 ]=8'd 97  ;
mem[ 98 ]=8'd 98  ;
mem[ 99 ]=8'd 99  ;
mem[ 100 ]=8'd 100  ;
mem[ 101 ]=8'd 101  ;
mem[ 102 ]=8'd 102  ;
mem[ 103 ]=8'd 103  ;
mem[ 104 ]=8'd 104  ;
mem[ 105 ]=8'd 105  ;
mem[ 106 ]=8'd 106  ;
mem[ 107 ]=8'd 107  ;
mem[ 108 ]=8'd 108  ;
mem[ 109 ]=8'd 109  ;
mem[ 110 ]=8'd 110  ;
mem[ 111 ]=8'd 111  ;
mem[ 112 ]=8'd 112  ;
mem[ 113 ]=8'd 113  ;
mem[ 114 ]=8'd 114  ;
mem[ 115 ]=8'd 115  ;
mem[ 116 ]=8'd 116  ;
mem[ 117 ]=8'd 117  ;
mem[ 118 ]=8'd 118  ;
mem[ 119 ]=8'd 119  ;
mem[ 120 ]=8'd 120  ;
mem[ 121 ]=8'd 121  ;
mem[ 122 ]=8'd 122  ;
mem[ 123 ]=8'd 123  ;
mem[ 124 ]=8'd 124  ;
mem[ 125 ]=8'd 125  ;
mem[ 126 ]=8'd 126  ;
mem[ 127 ]=8'd 127  ;
mem[ 128 ]=8'd 128  ;
mem[ 129 ]=8'd 129  ;
mem[ 130 ]=8'd 130  ;
mem[ 131 ]=8'd 131  ;
mem[ 132 ]=8'd 132  ;
mem[ 133 ]=8'd 133  ;
mem[ 134 ]=8'd 134  ;
mem[ 135 ]=8'd 135  ;
mem[ 136 ]=8'd 136  ;
mem[ 137 ]=8'd 137  ;
mem[ 138 ]=8'd 138  ;
mem[ 139 ]=8'd 139  ;
mem[ 140 ]=8'd 140  ;
mem[ 141 ]=8'd 141  ;
mem[ 142 ]=8'd 142  ;
mem[ 143 ]=8'd 143  ;
mem[ 144 ]=8'd 144  ;
mem[ 145 ]=8'd 145  ;
mem[ 146 ]=8'd 146  ;
mem[ 147 ]=8'd 147  ;
mem[ 148 ]=8'd 148  ;
mem[ 149 ]=8'd 149  ;
mem[ 150 ]=8'd 150  ;
mem[ 151 ]=8'd 151  ;
mem[ 152 ]=8'd 152  ;
mem[ 153 ]=8'd 153  ;
mem[ 154 ]=8'd 154  ;
mem[ 155 ]=8'd 155  ;
mem[ 156 ]=8'd 156  ;
mem[ 157 ]=8'd 157  ;
mem[ 158 ]=8'd 158  ;
mem[ 159 ]=8'd 159  ;
mem[ 160 ]=8'd 160  ;
mem[ 161 ]=8'd 161  ;
mem[ 162 ]=8'd 162  ;
mem[ 163 ]=8'd 163  ;
mem[ 164 ]=8'd 164  ;
mem[ 165 ]=8'd 165  ;
mem[ 166 ]=8'd 166  ;
mem[ 167 ]=8'd 167  ;
mem[ 168 ]=8'd 168  ;
mem[ 169 ]=8'd 169  ;
mem[ 170 ]=8'd 170  ;
mem[ 171 ]=8'd 171  ;
mem[ 172 ]=8'd 172  ;
mem[ 173 ]=8'd 173  ;
mem[ 174 ]=8'd 174  ;
mem[ 175 ]=8'd 175  ;
mem[ 176 ]=8'd 176  ;
mem[ 177 ]=8'd 177  ;
mem[ 178 ]=8'd 178  ;
mem[ 179 ]=8'd 179  ;
mem[ 180 ]=8'd 180  ;
mem[ 181 ]=8'd 181  ;
mem[ 182 ]=8'd 182  ;
mem[ 183 ]=8'd 183  ;
mem[ 184 ]=8'd 184  ;
mem[ 185 ]=8'd 185  ;
mem[ 186 ]=8'd 186  ;
mem[ 187 ]=8'd 187  ;
mem[ 188 ]=8'd 188  ;
mem[ 189 ]=8'd 189  ;
mem[ 190 ]=8'd 190  ;
mem[ 191 ]=8'd 191  ;
mem[ 192 ]=8'd 192  ;
mem[ 193 ]=8'd 193  ;
mem[ 194 ]=8'd 194  ;
mem[ 195 ]=8'd 195  ;
mem[ 196 ]=8'd 196  ;
mem[ 197 ]=8'd 197  ;
mem[ 198 ]=8'd 198  ;
mem[ 199 ]=8'd 199  ;
mem[ 200 ]=8'd 200  ;
mem[ 201 ]=8'd 201  ;
mem[ 202 ]=8'd 202  ;
mem[ 203 ]=8'd 203  ;
mem[ 204 ]=8'd 204  ;
mem[ 205 ]=8'd 205  ;
mem[ 206 ]=8'd 206  ;
mem[ 207 ]=8'd 207  ;
mem[ 208 ]=8'd 208  ;
mem[ 209 ]=8'd 209  ;
mem[ 210 ]=8'd 210  ;
mem[ 211 ]=8'd 211  ;
mem[ 212 ]=8'd 212  ;
mem[ 213 ]=8'd 213  ;
mem[ 214 ]=8'd 214  ;
mem[ 215 ]=8'd 215  ;
mem[ 216 ]=8'd 216  ;
mem[ 217 ]=8'd 217  ;
mem[ 218 ]=8'd 218  ;
mem[ 219 ]=8'd 219  ;
mem[ 220 ]=8'd 220  ;
mem[ 221 ]=8'd 221  ;
mem[ 222 ]=8'd 222  ;
mem[ 223 ]=8'd 223  ;
mem[ 224 ]=8'd 224  ;
mem[ 225 ]=8'd 225  ;
mem[ 226 ]=8'd 226  ;
mem[ 227 ]=8'd 227  ;
mem[ 228 ]=8'd 228  ;
mem[ 229 ]=8'd 229  ;
mem[ 230 ]=8'd 230  ;
mem[ 231 ]=8'd 231  ;
mem[ 232 ]=8'd 232  ;
mem[ 233 ]=8'd 233  ;
mem[ 234 ]=8'd 234  ;
mem[ 235 ]=8'd 235  ;
mem[ 236 ]=8'd 236  ;
mem[ 237 ]=8'd 237  ;
mem[ 238 ]=8'd 238  ;
mem[ 239 ]=8'd 239  ;
mem[ 240 ]=8'd 240  ;
mem[ 241 ]=8'd 241  ;
mem[ 242 ]=8'd 242  ;
mem[ 243 ]=8'd 243  ;
mem[ 244 ]=8'd 244  ;
mem[ 245 ]=8'd 245  ;
mem[ 246 ]=8'd 246  ;
mem[ 247 ]=8'd 247  ;
mem[ 248 ]=8'd 248  ;
mem[ 249 ]=8'd 249  ;
mem[ 250 ]=8'd 250  ;
mem[ 251 ]=8'd 251  ;
mem[ 252 ]=8'd 252  ;
mem[ 253 ]=8'd 253  ;
mem[ 254 ]=8'd 254  ;
mem[ 255 ]=8'd 255  ;
end

            
        
	 
	 
	 
	 
endmodule
