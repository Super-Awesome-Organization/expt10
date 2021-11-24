% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	key_invert.m is a function that inverts one round of the key scheduling
%	in 128-AES. The function splits one key round in to 4 words (k4:k7). 
%   Then xor's certin words together to obtain the previous round sub-key
%   (k3:k0). This file also contains the g function which is used to obtain
%   the MSB word for the prior key. The g function works by taking in the
%   LSB word from the prior key and the roundNum. roundNum correspondes to
%   the sub round key that is being solved. The g function takes the input
%   word and splits it into 4 bytes. A round swap is performed by shifting
%   the bits to the left. Then SubByte for each Byte is called. Then the
%   MSB byte after round swap is xor'd with the corresponding byte of rcon.
%   rcon is implmented as an array and uses  roundNum to correctly index
%   the array. The function returns the final word result.


function [keyOut] = key_invert(keyIn, roundNum)

% Splits the sub-key into 4 words 
k4 = keyIn(1,1:4);
k5 = keyIn(1,5:8);
k6 = keyIn(1,9:12);
k7 = keyIn(1,13:16);

% XOR's the words to obtain the previous round sub-key
k3 = bitxor(k7,k6);
k2 = bitxor(k6,k5);
k1 = bitxor(k5,k4);

% Calls g function and uses k3 to get the MSB of the previous round sub-key
k0 = bitxor(k4,g(k3,roundNum));

% returns previous round sub-key
keyOut = [k0 k1 k2 k3];

end

function [kout] = g(keyIn,roundNum)

% Splits word into byte
b3 = keyIn(1);
b2 = keyIn(2);
b1 = keyIn(3);
b0 = keyIn(4);

%Round Swap step
rs = [ b2 b1 b0 b3];

% SubByte
subByte_step = [subByte(rs(1)) subByte(rs(2)) subByte(rs(3)) subByte(rs(4))];

% defining rcon list
rcon_list = [0x36 0x1B 0x80 0x40 0x20 0x10 0x08 0x04 0x02 0x01];

%Xor MSB byte with corresponding rcon
subByte_step (1) = bitxor(subByte_step(1),rcon_list(roundNum));

% returns entire word
kout = double(subByte_step);

end
