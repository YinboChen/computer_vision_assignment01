function[ outImg ] = gaussFilter( inImg, sigma)

%G(x,y)=exp(-(x^2+y^2)/2*sigma^2)/(2*pi*sigma^2);
% boxfilter based n = 2* ceil (2* sigma)+1
% inImg = imread('lena1.jpg');
% For testing let sigma =9;
n = 2* ceil(2*sigma)+1;
maskImg = meanFilter(inImg, n);
maskImg = im2double(maskImg);
% call meanFilter
inImg = im2double(inImg);
outImg = zeros(size(inImg));

% size(output)
% size(inImg)

r =floor((n-1)/2);
% cut = floor(sigma/2);
% for testing uses sigma value equ 1.5

for x = 1:n
    for y  = 1:n
           G(x,y) = exp(-((x-1)^2+(y-1)^2)/(2*sigma^2))/(2*pi*sigma^2);
%          G(x,y)=exp(-(x^2+y^2)/2*sigma^2)/(2*pi*sigma^2);
         
        
    end
end
%test G value
G1 =G./sum(sum(G));
%G1 test G value
% sum of n by n matrix =1

R = size(inImg,1);
C = size(inImg,2);



for i = 1+r : R-r
    for j= 1+r: C-r
                 
                 temp = single(inImg(i-r:i+r,j-r:j+r,:));  
%                R_out = sum(sum(temp(:,:,1).*G1));
%                G_out = sum(sum(temp(:,:,2).*G1));
%                B_out = sum(sum(temp(:,:,3).*G1));
%                outImg(i,j,:)=[R_out,G_out,B_out];
                 outImg(i,j,:)= sum(sum(temp.*G1));
                 maskImg(i,j,:)= outImg(i,j,:);
                 
                 
    end
end
    outImg = maskImg;
%       subplot(1,2,1),imshow(inImg);
%       subplot(1,2,2),imshow(outImg(r:R-r,r:C-r,:));
%         outImg(r:R-r,r:C-r,:);
%       trim the black edge = n/2
%       subplot(1,2,2),imshow(outImg);

end