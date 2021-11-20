function [hexvalue] = parse(fileName)
%PARSE Summary of this function goes here
%   Detailed explanation goes here
hexpadding= fgetl(fileName); % get line information and move to next
 hexvalue = eraseBetween(hexpadding,1,9); % removing header
        hexvalue= eraseBetween(hexvalue,33,34);   % removing checksum
        
end

