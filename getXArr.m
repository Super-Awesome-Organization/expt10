% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	getXArr.m is a function that implments equation 6 in the lab doc by
%	byte. The function takes in a byte of C and a byte of D. First C and
%	D are xor'd to get the left handside of equation 6. The function then
%	itterates through all of the combinations of x and e, where x can be a
%	value between 0 and 255 and e is a value of [1 2 4 8 16 32 64 128]. The
%	right hand side of equation 6 is computed by taking the subByte of x
%	and xoring it with the subByte of x and e xor'd. Then for each
%	combination the left and right hand size are compared to see if they
%	are equal. If they are the corresponding x is placed into an array. The
%	function returns this array.

function [x_out] = getXArr(C,D)
%C and D are both 1 byte, Pass an integer 0 to 127
%MSB is first

x_out = [];

% compute the left hand side of equation 6
left = bitxor(C,D); 

% all possible values for x
for x = 0:255 
    
    for e = [1 2 4 8 16 32 64 128] % all possible values for e
       
        % compute the right hand side of equation 6
        right = bitxor(subByte(x),subByte(bitxor(x,e))); 
        
        % check to see if left and right equal. If true then store current
        % x value to array
        if left == right
           x_out = [x_out x]; 
        end
        
    end  
end
% Removes any duplicate x values
x_out = unique(x_out); 
end

