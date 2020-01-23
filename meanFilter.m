function [outImg] = meanFilter( inImg, kernel_size)
% kernel_size = 3
% current_img = imread('sully.bmp');
x= kernel_size;
cut = floor(x/2);
%edge D-value
r = size(inImg,1);
c = size(inImg,2);
output = zeros(size(inImg));
% size(output)
outImg = uint8(output);
for i = 1 : r
    for j = 1: c
            rmin = max(1,i-cut);
            rmax = min(r,i+cut);
            cmin = max(1,j-cut);
            cmax = min(c,j+cut);
            temp = inImg(rmin:rmax,cmin:cmax,:);
            outImg(i,j,:) = (sum(sum(temp)))/x^2;
       
    end
end

end