% This script creates a menu driven application

%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Yinbo Chen
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;close all;clc;

% Display a menu and get a choice
choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L', ...
    'addRandomNoise_NL','Task7','Task8','Task9','Task10','Task11','Task12',...
    'Task13','Task14','Task15','Task16','Task17');  % as you develop functions, add buttons for them here
 
% Choice 1 is to exit the program
while choice ~= 1
   switch choice
       case 0
           disp('Error - please choose one of the options.')
           % Display a menu and get a choice
           choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L',...
    'addRandomNoise_NL');  % as you develop functions, add buttons for them here
        case 2
           % Load an image
           image_choice = menu('Choose an image', 'lena1', 'mandril1', 'sully', 'yoda', 'shrek');
           switch image_choice
               case 1
                   filename = 'lena1.jpg';
               case 2
                   filename = 'wrench1_mask.jpg';
               case 4
                   filename = 'yoda.bmp';
               % fill in cases for all the images you plan to use
           end
           current_img = imread(filename);
       case 3
           % Display image
           figure
           imagesc(current_img);
           if size(current_img,3) == 1
               colormap gray
           end
           
       case 4
           % Mean Filter
           
           % 1. Ask the user for size of kernel
           
           % 2. Call the appropriate function
           newImage = meanFilter(current_img, k_size); % create your own function for the mean filter
           
           % 3. Display the old and the new image using subplot
           % ....
           %subplot(...)
           %imagesc(current_img)
           
           % subplot(...)
           %imagesc(newImage)
           
           
           % 4. Save the newImage to a file
           
              
       case 5
           %Brighten: individually modifies the RGB channels of an image, 
           %brightening or darkening it. Use Loops!
            brightness1 = 0;
            prompt = {'Enter Brighten value between -255 to 255:'};
            dlgtitle = 'Brighten Input';
            dims = 1;
            answer = inputdlg(prompt,dlgtitle,dims);
            brightness1 = str2num(answer{1});
            output_L = makeBright_L(current_img,brightness1);
            subplot(1,2,1),imshow(current_img)
            subplot(1,2,2),imshow(output_L)
       case 6
           
            brightness2 = 0;
            prompt = {'Enter Brighten value between -255 to 255:'};
            dlgtitle = 'Brighten Input';
            dims = 1;
            answer = inputdlg(prompt,dlgtitle,dims);
            brightness2 = str2num(answer{1})
            output_NL= makeBright_NL(current_img, brightness2);
            subplot(1,2,1),imshow(current_img)
            subplot(1,2,2),imshow(output_NL)
        
       case 7
           outputInvert_L =  invert_L (current_img);
           subplot(1,2,1),imshow(current_img)
           subplot(1,2,2),imshow(outputInvert_L);
      
       case 8
           outputInvert_NL =  invert_NL (current_img);
           subplot(1,2,1),imshow(current_img)
           subplot(1,2,2),imshow(outputInvert_NL);
           
       case 9
           outputAddNoise_L = addRandomNoise_L (current_img);
           subplot(1,2,1),imshow(current_img)
           subplot(1,2,2),imshow(outputAddNoise_L);
           
       case 10
           outputAddNoise_NL = addRandomNoise_NL (current_img);
           subplot(1,2,1),imshow(current_img)
           subplot(1,2,2),imshow(outputAddNoise_NL);
           

   end
   % Display menu again and get user's choice
%    choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
%     'Display Image', 'Mean Filter');  % as you develop functions, add buttons for them here
    choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Mean Filter',' makeBright_L',' makeBright_NL','Invert_L','invert_NL','addRandomNoise_L', ...
    'addRandomNoise_NL','Task7','Task8','Task9','Task10','Task11','Task12',...
    'Task13','Task14','Task15','Task16','Task17');  % as you develop functions, add buttons for them here
end
