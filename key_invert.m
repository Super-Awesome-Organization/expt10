function [keyOut] = key_invert(keyIn, roundNum)
%KEY_INVERT Summary of this function goes here
%   Detailed explanation goes here
 
k4 = keyIn(1,1:4);
k5 = keyIn(1,5:8);
k6 = keyIn(1,9:12);
k7 = keyIn(1,13:16);

k3 = bitxor(k7,k6);
k2 = bitxor(k6,k5);
k1 = bitxor(k5,k4);
k0 = bitxor(k4,g(k3,roundNum));

keyOut = [k0 k1 k2 k3];

end

function [kout] = g(keyIn,roundNum)
b3 = keyIn(1);
b2 = keyIn(2);
b1 = keyIn(3);
b0 = keyIn(4);

%Round Swap step
rs = [ b2 b1 b0 b3];

subByte_step = [subByte(rs(1)) subByte(rs(2)) subByte(rs(3)) subByte(rs(4))];

rcon_list = [0x36 0x1B 0x80 0x40 0x20 0x10 0x08 0x04 0x02 0x01];

subByte_step (1) = bitxor(subByte_step(1),rcon_list(roundNum));

kout = double(subByte_step);

end
