function [outimg] = meanFilter( inImg, kernel_size)

inImg = imread('sully.bmp');
M = imnoise(inImg,'salt & pepper');
imshow(M);
% M(x,y)= sum(sum(A(x-r:x+r,y-r:y+r)))
%M(pixel)=box sum value/(r*r)


end