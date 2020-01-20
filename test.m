A = imread('yoda.bmp');
RGB = zeros(size(A));
for i =1 :size(A,1)
    for j= 1 : size(A,2)
        RGB= A(i,j);
        
          
        disp(RGB);
    end
   
end





        
