% function [outImg] = scaleNearest( inImg, factor)
function [] = scaleNearest( inImg, factor)
inImg = imread('yoda.bmp');
f =2;
R = size(inImg,1);
C = size(inImg,2);
% original image R & C
Rt = R * f;
Ct = C * f;
% precessed image R & C
% outImg = zeros(f*R,f*C,3);

for i = 1 : R
    for j = 1:C
        temp(i,j,:) = inImg(i,j,:);
            for m = 1 :f
                for n = 1:f
                    box(m,n,:)= temp(:,:,:);
                    box = box(m,n,:);
                end
            end
            
            
            
    end
end
 imshow(outImg);
end