function [rowIdx, colIdx] = autoROI(image, reqSize)
    if size(image,3) == 3
        image = im2gray(image);
        image = imbinarize(image);
    elseif size(image,3) == 1
        image = imbinarize(image);
    end
    exitFlag = 0;
    for rowIdx=1:size(image,1)
        for colIdx=1:size(image,2)
            if image(rowIdx, colIdx) == 1
                if ((rowIdx + reqSize) < size(image,1)) && ((colIdx + reqSize) < size(image,2))
                    if sum(sum(image(rowIdx:rowIdx+reqSize-1,colIdx:colIdx+reqSize-1))) == (reqSize * reqSize)
                        croppedTempMask = image(rowIdx:rowIdx+reqSize-1,colIdx:colIdx+reqSize-1);
                        exitFlag = 1;
                        break
                    end
                end
            end
        end
        if exitFlag == 1
            break;
        end
    end
end