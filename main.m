
%import and define C
C = fgetl(fopen('C_data.hex','r'));

%get all D file names
files = getFileNames;
full = -1* ones(8,128);
file_count = 1;
    
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
    m9_sub = mode(full, 'all');
    
    
    
end