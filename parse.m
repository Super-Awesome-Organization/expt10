% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	parse.m is a function strips away the header and checksum information
%	from the hex file. This function is only needed if data (.hex files)
%   is collected from the In-System-Memory Content Editor window in
%   Quartus. The input is the full hex file with the header and checksum
%   information. The output is the 16 Byte of data without header or
%   checksum information.


function [hexvalue] = parse(fileName)

    hexpadding= fgetl(fileName); % get line information and move to next
    hexvalue = eraseBetween(hexpadding,1,9); % removing header
    hexvalue= eraseBetween(hexvalue,33,34);   % removing checksum
        
end

