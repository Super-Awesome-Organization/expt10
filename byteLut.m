% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	byteLut.m is a function that implments the ShiftRows function in the
%	AES algoriuthm. This function will will return the MATLAB index postion 
%	that corresponds to the specific byte that is being looked at before
%	ShiftRows occurs. The input is the currByte which is the specific byte 
%   that is being looked at before ShiftRows occurs. The outputs are
%   highByte and lowByte which corresponds to the index postioning in
%   MATLAB after ShiftRows is performed. ShiftRows is performed in this
%   function by using a look-up-table (LUT).


function [highByte,lowByte] = byteLut(currByte)

% current byte being looked at and ouputs the index postion for shiftrows
switch (currByte)
    
    case 0
        highByte = 1;
        lowByte = 2;
    case 1
        highByte = 27;
        lowByte = 28  ;  
    case 2
        highByte = 21;
        lowByte =    22 ;    
    case 3
        highByte = 15;
        lowByte = 16;
    case 4
        highByte = 9;
        lowByte = 10;
    case 5
        highByte = 3;
        lowByte = 4;
    case 6
        highByte = 29;
        lowByte = 30;
    case 7
        highByte = 23;
        lowByte = 24;
    case 8
        highByte = 17;
        lowByte = 18;
    case 9
        highByte = 11;
        lowByte = 12;
    case 10
        highByte = 5;
        lowByte =   6;

    case 11
        highByte = 31;
        lowByte = 32;
     
    case 12
        highByte = 25;
        lowByte =  26;
    case 13
        highByte = 19;
        lowByte =  20;
        
    case 14
        highByte = 13;
        lowByte =  14;
    case 15
        highByte = 7;
        lowByte =   8;       
        
end        