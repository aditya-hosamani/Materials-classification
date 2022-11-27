% Import images

clear all;

data_folder = "Data\";

subfolders = genpath(data_folder);
subfolders = split(subfolders, ";");
subfolders = string(subfolders); 
index = find(strlength(subfolders(:)) <= 10);
for i = 0:(length(index)-1)
    subfolders(index(end-i)) = [];
end
for i = 1:length(subfolders)
    subfolders(i) = strcat(subfolders(i),"\");
end
% paths = [];
k = 1;
for i = 1:length(subfolders)
    d = dir(subfolders(i));
    for j = 3:length(d)
        image_name = d(j).name;
        paths(k) = strcat(subfolders(i),image_name);
        k = k + 1;
    end
end

% To read the images we only will have to do:
imread(paths(l));