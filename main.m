% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	main.m is the main script for the DFA algoriuthm. This script will take
%	the correct ciphertext (C) and 128 faulty ciphertexts (D)s to determine
%	what the key value is for a 128-AES. Each faulty chiphertext must be
%	placed in a seperate .hex file and named with the bit position of where
%	the fault was injected into. To get the final_key (K) first M9 is computed
%	then K10 is found by using M9. Last the inverse key scheduling is
%	performed on K10 to find K. M9 is found by calling getXArr, for each
%	bit of each byte. For each byte  the x values are compared between the
%	8 bit to find which x vlaue satifies each 8 bits for a byte. That value
%	will be the M9 for that byte.
%   Then using equation 1 in the lab doc K10 can be found.
%	by using the 16 byte M9 and 16 byte C. SubByte M9 and Shiftrows is
%	performed on M9 first. Then it is xor'd with C to obtian K10.
%   After K10 is found, it is passed into the inverse key scheduling 
%   function 10 times to find K.



%import and define C
% C = parse(fopen('C_data.hex','r')); % For Part2 Data
C = parse(fopen('C_data.hex','r')); % For Part3 Data

%get all D file names
m9 = zeros (1,16);
files = getFileNames;
full = -1* ones(8,128);
file_count = 1;

%% Get M9
%For each Byte out of the 16...
for currByte= 1:16 
%Loop through all files

    for i = 1:8
    %Import file and put value in D: where D is an array of 16 bytes
    
    %D = fgetl(fopen(files(file_count),'r')); % for Part2 data
    D = parse(fopen(files(file_count),'r'));  % For Part3 Data
    file_count = file_count +1;

        % gets the correct byte for bit fault based on shiftrows
        [highByte, lowByte] = byteLut(16-currByte);
        
        C_byte = hex2dec(C(highByte:lowByte));
        D_byte = hex2dec(D(highByte:lowByte));
        
        % Gets the  values that satisfies equation 6 for each byte in D
        x_arr = getXArr(C_byte,D_byte);
        full(i,:) = [x_arr, -1*ones(1,128-length(x_arr))] ;
        
    end
    %Compares all of the xs for each 8 bit in a specific byte to see which
    %x is the same for each 8 bits
    full(full==-1) = NaN;
    m9(1, 17-currByte) = mode(full, 'all');
    
   
end
m9_hex = dec2hex(m9, 2);

%% Get K10
K10 = -1*ones (1,16);
C_dec = -1*ones (1,16);
result = -1*ones(1,16);

%turn C into array
for i = 1:16
    C_dec(1,i) = hex2dec(C(i*2-1:i*2));
    
end 

% Performing subByte and shiftrow operation for each byte in M9
for i = 1:16
   temp = subByte(m9(1,i));
   
   [highBit, lowBit] = byteLut(i-1);
   index = lowBit/2;
   result(1,index) = temp;
   
  
end  
    % XOR result above with C to get K10
   K10  = bitxor(C_dec,result);
   
%% Finding K
tempK = K10;
%for i = 1:10
 %  tempK = key_invert(tempK,i); 

%end

% calcuating the inverse key schedule for each round
K9 = key_invert(K10,1);
K8 = key_invert(K9,2);
K7 = key_invert(K8,3);
K6 = key_invert(K7,4);
K5 = key_invert(K6,5);
K4 = key_invert(K5,6);
K3 = key_invert(K4,7);
K2 = key_invert(K3,8);
K1 = key_invert(K2,9);
finalKey = key_invert(K1,10);


finalKey_hex = dec2hex(finalKey); %final key in hex


