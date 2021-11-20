
%import and define C
C = fgetl(fopen('C_data.hex','r'));

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
    
    D = fgetl(fopen(files(file_count),'r'));
    file_count = file_count +1;

       
        [highByte, lowByte] = byteLut(16-currByte);
        
        C_byte = hex2dec(C(highByte:lowByte));
        D_byte = hex2dec(D(highByte:lowByte));
        x_arr = getXArr(C_byte,D_byte);
        full(i,:) = [x_arr, -1*ones(1,128-length(x_arr))] ;
        
    end
    %Compare code
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
for i = 1:16
   temp = subByte(m9(1,i));
   
   [highBit, lowBit] = byteLut(i-1);
   index = lowBit/2;
   result(1,index) = temp;
   
  
end  
   K10  = bitxor(C_dec,result);




