function [x_out] = getXArr(C,D)
%C and D are both 1 byte, Pass an integer 0 to 127
%MSB is first
%GETXARR Summary of this function goes here
%   Detailed explanation goes here

x_out = [];
left = bitxor(C,D);
for x = 0:255
    
    for e = [1 2 4 8 16 32 64 128]
        right = bitxor(subByte(x),subByte(bitxor(x,e)));
        if left == right
           x_out = [x_out x]; 
        end
    end  
end    
x_out = unique(x_out);
end

