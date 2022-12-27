% Import images

function paths = Images_import(data_folder)
    subfolders = genpath(data_folder);
    subfolders = split(subfolders, ";");
    subfolders = string(subfolders);
    index = find(strlength(subfolders(:)) <= strlength(data_folder));
    
    for i = 0:(length(index)-1)
        subfolders(index(end-i)) = [];
    end
    
    for i = 1:length(subfolders)
        subfolders(i) = strcat(subfolders(i),"\");
    end
    
    
    for i = 1:length(subfolders)
        d = dir(subfolders(i));
        k = 1;
        for j = 3:length(d)
            image_name = d(j).name;
            paths(i,k).path = strcat(subfolders(i),image_name);
            k = k + 1;
        end
    end
end

