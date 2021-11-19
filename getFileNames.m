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

