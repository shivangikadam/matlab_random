clc;
clear all;
img_read=imread('cameraman.tif');
imshow(img_read);
%3x3 filter by default
avg_filter=fspecial('average');
img_avg=imfilter(img_read, avg_filter);
figure
imshow(img_avg);

