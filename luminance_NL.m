function [ outImg] = luminance_NL (inImg)

R = inImg(:,:,1);
G = inImg(:,:,2);
B = inImg(:,:,3);

outImg = 0.299*R + 0.587*G + 0.114*B;

end