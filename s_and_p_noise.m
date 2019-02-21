clc;
img_read=imread('cameraman.tif');
i=imnoise(img_read, 'salt & pepper');
imshow(i);

%Median Filter%
i_median=medfilt2(i);
figure
imshow(i_median);