function [ outImg ] = makeBright_NL(inImg, brightness )
    outImg = brightness + inImg; 
    outImg(outImg > 255) = 255;
%   imshow(outImg);
end