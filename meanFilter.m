% function [outimg] = meanFilter( inImg, kernel_size)
function [outimg] = meanFilter( inImg)

current_img = imread('sully.bmp');
inImg = rgb2gray(current_img);
% imshow(M);
M = current_img;
size(M)
x=3;
addN = floor(x/2);
[m,n] = size(M);
output = zeros(m,n);
size(output)
% output = uint8(output);
% test size(output)

 for i = 1:m
     for j = 1:n
         rmin = max(1,i - addN);
         rmax = min(m,i + addN);
         cmin = max(1,j - addN);
         cmax = min(n,j + addN);
         temp = M(rmin: rmax, cmin:cmax);
         
          output(i,j,1) = sum(sum(temp),1)/x^2;       
     end
 end



subplot(1,2,1),imshow(current_img)
subplot(1,2,2),imshow(output);

end