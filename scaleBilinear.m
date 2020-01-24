function [outImg] = scaleBilinear ( inImg, factor)
% inImg = imread('lena1.jpg');
f =factor;

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
        r = i/f;
        c = j/f;
        r1 = max(1,floor(i/f)-1);
        %avoid boundance error
        r2 = min(R,floor(i/f)+1);
        c1 = max(1,floor(j/f)-1);
        c2 = min(C,floor(j/f)+1);
        %four nearest pixels (r1,c1),(r1,c2),(r2,c1),(r2,c2). Target pixel (r,c)
        
        I1 = inImg(r1,c1,:);
        I2 = inImg(r1,c2,:);
        I3 = inImg(r2,c1,:);
        I4 = inImg(r2,c2,:);
        %each nearest pixels' intensity
        
       Ii = (c2-c)/(c2-c1)*I1+(c-c1)/(c2-c1)*I2;
       Ij = (c2-c)/(c2-c1)*I3+(c-c1)/(c2-c1)*I4;
       outImg(i,j,:) =(r2-r)/(c2-c1)*Ii+(r-r1)/(r2-r1)*Ij;
    end
end

end