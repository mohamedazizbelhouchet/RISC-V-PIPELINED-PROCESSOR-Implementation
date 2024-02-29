`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2024 15:45:29
// Design Name: 
// Module Name: Data_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Data_Memory(clk,WD,A,WE,RD);
input clk ,WE ;
input [31:0]A,WD;
output [31:0] RD ;

 reg [31:0]memo [255 :0] ;
 
 always@( posedge clk) begin
 if (WE)begin
    memo[A] <= WD ;
    end 
    end  
    assign RD= memo[A] ;
    initial begin
 memo[ 0 ]=32'd 0 ;

memo[ 1 ]=32'd 1 ;

memo[ 2 ]=32'd 2 ;

memo[ 3 ]=32'd 3 ;

memo[ 4 ]=32'd 4 ;

memo[ 5 ]=32'd 5 ;

memo[ 6 ]=32'd 6 ;

memo[ 7 ]=32'd 7 ;

memo[ 8 ]=32'd 8 ;

memo[ 9 ]=32'd 9 ;

memo[ 10 ]=32'd 10 ;

memo[ 11 ]=32'd 11 ;

memo[ 12 ]=32'd 12 ;

memo[ 13 ]=32'd 13 ;

memo[ 14 ]=32'd 14 ;

memo[ 15 ]=32'd 15 ;

memo[ 16 ]=32'd 16 ;

memo[ 17 ]=32'd 17 ;

memo[ 18 ]=32'd 18 ;

memo[ 19 ]=32'd 19 ;

memo[ 20 ]=32'd 20 ;

memo[ 21 ]=32'd 21 ;

memo[ 22 ]=32'd 22 ;

memo[ 23 ]=32'd 23 ;

memo[ 24 ]=32'd 24 ;

memo[ 25 ]=32'd 25 ;

memo[ 26 ]=32'd 26 ;

memo[ 27 ]=32'd 27 ;

memo[ 28 ]=32'd 28 ;

memo[ 29 ]=32'd 29 ;

memo[ 30 ]=32'd 30 ;

memo[ 31 ]=32'd 31 ;

memo[ 32 ]=32'd 32 ;

memo[ 33 ]=32'd 33 ;

memo[ 34 ]=32'd 34 ;

memo[ 35 ]=32'd 35 ;

memo[ 36 ]=32'd 36 ;

memo[ 37 ]=32'd 37 ;

memo[ 38 ]=32'd 38 ;

memo[ 39 ]=32'd 39 ;

memo[ 40 ]=32'd 40 ;

memo[ 41 ]=32'd 41 ;

memo[ 42 ]=32'd 42 ;

memo[ 43 ]=32'd 43 ;

memo[ 44 ]=32'd 44 ;

memo[ 45 ]=32'd 45 ;

memo[ 46 ]=32'd 46 ;

memo[ 47 ]=32'd 47 ;

memo[ 48 ]=32'd 48 ;

memo[ 49 ]=32'd 49 ;

memo[ 50 ]=32'd 50 ;

memo[ 51 ]=32'd 51 ;

memo[ 52 ]=32'd 52 ;

memo[ 53 ]=32'd 53 ;

memo[ 54 ]=32'd 54 ;

memo[ 55 ]=32'd 55 ;

memo[ 56 ]=32'd 56 ;

memo[ 57 ]=32'd 57 ;

memo[ 58 ]=32'd 58 ;

memo[ 59 ]=32'd 59 ;

memo[ 60 ]=32'd 60 ;

memo[ 61 ]=32'd 61 ;

memo[ 62 ]=32'd 62 ;

memo[ 63 ]=32'd 63 ;

memo[ 64 ]=32'd 64 ;

memo[ 65 ]=32'd 65 ;

memo[ 66 ]=32'd 66 ;

memo[ 67 ]=32'd 67 ;

memo[ 68 ]=32'd 68 ;

memo[ 69 ]=32'd 69 ;

memo[ 70 ]=32'd 70 ;

memo[ 71 ]=32'd 71 ;

memo[ 72 ]=32'd 72 ;

memo[ 73 ]=32'd 73 ;

memo[ 74 ]=32'd 74 ;

memo[ 75 ]=32'd 75 ;

memo[ 76 ]=32'd 76 ;

memo[ 77 ]=32'd 77 ;

memo[ 78 ]=32'd 78 ;

memo[ 79 ]=32'd 79 ;

memo[ 80 ]=32'd 80 ;

memo[ 81 ]=32'd 81 ;

memo[ 82 ]=32'd 82 ;

memo[ 83 ]=32'd 83 ;

memo[ 84 ]=32'd 84 ;

memo[ 85 ]=32'd 85 ;

memo[ 86 ]=32'd 86 ;

memo[ 87 ]=32'd 87 ;

memo[ 88 ]=32'd 88 ;

memo[ 89 ]=32'd 89 ;

memo[ 90 ]=32'd 90 ;

memo[ 91 ]=32'd 91 ;

memo[ 92 ]=32'd 92 ;

memo[ 93 ]=32'd 93 ;

memo[ 94 ]=32'd 94 ;

memo[ 95 ]=32'd 95 ;

memo[ 96 ]=32'd 96 ;

memo[ 97 ]=32'd 97 ;

memo[ 98 ]=32'd 98 ;

memo[ 99 ]=32'd 99 ;

memo[ 100 ]=32'd 0 ;

memo[ 101 ]=32'd 1 ;

memo[ 102 ]=32'd 2 ;

memo[ 103 ]=32'd 3 ;

memo[ 104 ]=32'd 4 ;

memo[ 105 ]=32'd 5 ;

memo[ 106 ]=32'd 6 ;

memo[ 107 ]=32'd 7 ;

memo[ 108 ]=32'd 8 ;

memo[ 109 ]=32'd 9 ;

memo[ 110 ]=32'd 10 ;

memo[ 111 ]=32'd 11 ;

memo[ 112 ]=32'd 12 ;

memo[ 113 ]=32'd 13 ;

memo[ 114 ]=32'd 14 ;

memo[ 115 ]=32'd 15 ;

memo[ 116 ]=32'd 16 ;

memo[ 117 ]=32'd 17 ;

memo[ 118 ]=32'd 18 ;

memo[ 119 ]=32'd 19 ;

memo[ 120 ]=32'd 20 ;
memo[ 121 ]=32'd 21 ;

memo[ 122 ]=32'd 22 ;

memo[ 123 ]=32'd 23 ;

memo[ 124 ]=32'd 24 ;

memo[ 125 ]=32'd 25 ;

memo[ 126 ]=32'd 26 ;

memo[ 127 ]=32'd 27 ;

memo[ 128 ]=32'd 28 ;

memo[ 129 ]=32'd 29 ;

memo[ 130 ]=32'd 30 ;

memo[ 131 ]=32'd 31 ;

memo[ 132 ]=32'd 32 ;

memo[ 133 ]=32'd 33 ;

memo[ 134 ]=32'd 34 ;

memo[ 135 ]=32'd 35 ;

memo[ 136 ]=32'd 36 ;

memo[ 137 ]=32'd 37 ;

memo[ 138 ]=32'd 38 ;

memo[ 139 ]=32'd 39 ;

memo[ 140 ]=32'd 40 ;

memo[ 141 ]=32'd 41 ;

memo[ 142 ]=32'd 42 ;

memo[ 143 ]=32'd 43 ;

memo[ 144 ]=32'd 44 ;

memo[ 145 ]=32'd 45 ;

memo[ 146 ]=32'd 46 ;

memo[ 147 ]=32'd 47 ;

memo[ 148 ]=32'd 48 ;

memo[ 149 ]=32'd 49 ;

memo[ 150 ]=32'd 50 ;

memo[ 151 ]=32'd 51 ;

memo[ 152 ]=32'd 52 ;

memo[ 153 ]=32'd 53 ;

memo[ 154 ]=32'd 54 ;

memo[ 155 ]=32'd 55 ;

memo[ 156 ]=32'd 56 ;

memo[ 157 ]=32'd 57 ;

memo[ 158 ]=32'd 58 ;

memo[ 159 ]=32'd 59 ;

memo[ 160 ]=32'd 60 ;

memo[ 161 ]=32'd 61 ;
memo[ 162 ]=32'd 62 ;

memo[ 163 ]=32'd 63 ;

memo[ 164 ]=32'd 64 ;

memo[ 165 ]=32'd 65 ;

memo[ 166 ]=32'd 66 ;

memo[ 167 ]=32'd 67 ;

memo[ 168 ]=32'd 68 ;

memo[ 169 ]=32'd 69 ;

memo[ 170 ]=32'd 70 ;

memo[ 171 ]=32'd 71 ;

memo[ 172 ]=32'd 72 ;

memo[ 173 ]=32'd 73 ;

memo[ 174 ]=32'd 74 ;

memo[ 175 ]=32'd 75 ;

memo[ 176 ]=32'd 76 ;

memo[ 177 ]=32'd 77 ;

memo[ 178 ]=32'd 78 ;

memo[ 179 ]=32'd 79 ;

memo[ 180 ]=32'd 80 ;

memo[ 181 ]=32'd 81 ;

memo[ 182 ]=32'd 82 ;

memo[ 183 ]=32'd 83 ;

memo[ 184 ]=32'd 84 ;

memo[ 185 ]=32'd 85 ;

memo[ 186 ]=32'd 86 ;

memo[ 187 ]=32'd 87 ;

memo[ 188 ]=32'd 88 ;

memo[ 189 ]=32'd 89 ;

memo[ 190 ]=32'd 90 ;

memo[ 191 ]=32'd 91 ;
memo[ 192 ]=32'd 92 ;

memo[ 193 ]=32'd 93 ;

memo[ 194 ]=32'd 94 ;

memo[ 195 ]=32'd 95 ;

memo[ 196 ]=32'd 96 ;

memo[ 197 ]=32'd 97 ;

memo[ 198 ]=32'd 98 ;

memo[ 199 ]=32'd 99 ;

memo[ 200 ]=32'd 100 ;

memo[ 201 ]=32'd 110 ;

memo[ 202 ]=32'd 102 ;

memo[ 203 ]=32'd 3 ;

memo[ 204 ]=32'd 4 ;

memo[ 205 ]=32'd 5 ;

memo[ 206 ]=32'd 6 ;

memo[ 207 ]=32'd 7 ;

memo[ 208 ]=32'd 8 ;

memo[ 209 ]=32'd 9 ;

memo[ 210 ]=32'd 10 ;

memo[ 211 ]=32'd 11 ;

memo[ 212 ]=32'd 12 ;

memo[ 213 ]=32'd 13 ;

memo[ 214 ]=32'd 14 ;

memo[ 215 ]=32'd 15 ;

memo[ 216 ]=32'd 16 ;

memo[ 217 ]=32'd 17 ;

memo[ 218 ]=32'd 18 ;

memo[ 219 ]=32'd 19 ;

memo[ 220 ]=32'd 20 ;

memo[ 221 ]=32'd 21 ;

memo[ 222 ]=32'd 22 ;

memo[ 223 ]=32'd 23 ;

memo[ 224 ]=32'd 24 ;

memo[ 225 ]=32'd 25 ;

memo[ 226 ]=32'd 26 ;

memo[ 227 ]=32'd 27 ;

memo[ 228 ]=32'd 28 ;

memo[ 229 ]=32'd 29 ;

memo[ 230 ]=32'd 30 ;

memo[ 231 ]=32'd 31 ;

memo[ 232 ]=32'd 32 ;

memo[ 233 ]=32'd 33 ;

memo[ 234 ]=32'd 34 ;

memo[ 235 ]=32'd 35 ;

memo[ 236 ]=32'd 36 ;

memo[ 237 ]=32'd 37 ;

memo[ 238 ]=32'd 38 ;

memo[ 239 ]=32'd 39 ;

memo[ 240 ]=32'd 40 ;

memo[ 241 ]=32'd 41 ;

memo[ 242 ]=32'd 42 ;

memo[ 243 ]=32'd 43 ;

memo[ 244 ]=32'd 44 ;

memo[ 245 ]=32'd 45 ;

memo[ 246 ]=32'd 46 ;

memo[ 247 ]=32'd 47 ;

memo[ 248 ]=32'd 48 ;

memo[ 249 ]=32'd 49 ;

memo[ 250 ]=32'd 50 ;

memo[ 251 ]=32'd 51 ;

memo[ 252 ]=32'd 52 ;

memo[ 253 ]=32'd 53 ;

memo[ 254 ]=32'd 54 ;

memo[ 255 ]=32'd 55 ;
end
    

endmodule
