function [] = drawSubplots(current_img,output_img)        
        subplot(1,2,1),imshow(current_img)
        subplot(1,2,2),imshow(output_img);
end