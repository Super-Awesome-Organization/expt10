
%import and define C
C = fgetl(fopen('C_data.hex','r'));

%get all D file names
files = getFileNames;
full = [];
    
%For each Byte out of the 16...
for currByte= 1:16 
%Loop through all files
    for i = 1:length(files)
    %Import file and put value in D: where D is an array of 16 bytes
    D = fgetl(fopen(files(i),'r'));

        highByte = 32 - 2*(currByte -1)-1;
        lowByte = 32 - 2*(currByte -1);
        
        C_byte = hex2dec(C(highByte:lowByte));
        D_byte = hex2dec(D(highByte:lowByte));
        
        full = [full; getXArr()];
        
    end
end