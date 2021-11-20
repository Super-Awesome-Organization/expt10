function [highByte,lowByte] = byteLut(currByte)
%BYTELUT Summary of this function goes here
%   Detailed explanation goes here
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