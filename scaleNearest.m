function [outImg] = scaleNearest( inImg, factor)
% inImg = imread('yoda.bmp');
f = factor;

R = size(inImg,1);
C = size(inImg,2);
% original image R & C
Rt = floor(R * f);
Ct = floor(C * f);
% processed image R & C
output = zeros(Rt,Ct,3);
outImg = uint8(output);

for i = 1 : Rt
    for j = 1:Ct
         r1 = max(1,round(i/f));        
         c1 = max(1,round(j/f));
         outImg(i,j,:)=inImg(r1,c1,:);
    end
end

end