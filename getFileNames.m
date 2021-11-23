% Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
% Experiement 10 Part 3
% 11/29/2021
%
% Description:
%	getFileNames.m is a function gets all of the faulty ciphertexts.
%	Faulty ciphertexts needs to placed in 128 seperate .hex files and named
%	with the position of where the bit fault was inject into. If a bit
%	fault was injected into bit 5 the file name should be '005.hex'. Change
%	the traces_dir line to match the directory where the 128 faulty
%	ciphertext files reside. This function will return a 128 struct with 
%   location of all files

function [full_names] = getFileNames

traces_dir = "./data"; %gets directory
traces_files = dir(fullfile(traces_dir,'*.hex')); %gets all hex files in struct
full_names = [];

%Get the file name and input name for each trace
for k = 1:length(traces_files)

  baseFileName = traces_files(k).name;
  fullFileName = traces_dir + "/" + baseFileName;
  

  full_names = [full_names; fullFileName] ;
end
  
end

