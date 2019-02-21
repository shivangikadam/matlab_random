clc;
clear all;

img_read=imread('cameraman.tif');
%figure
imshow(img_read);

[row, col]=size(img_read);

for i=1:row
    for j=1:col
        if img_read(i,j)>127
            img_read(i,j)=255;
        
        else
            img_read(i,j)=1;
        end
    end
end

figure;
imshow(img_read);