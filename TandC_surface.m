%for the grinded part
x2 = imread('ZTA_TandC_surface.png');
x2 = rgb2gray(x2);
figure(2)
subplot(2,2,1)
imshow(x2)
BW2 = imextendedmin(x2,100);
subplot(2,2,2)
imshow(BW2);
se90 = strel('line',1,90);
se0 = strel('line',1,0);
BWsdil = imdilate(BW2,[se90,se0]);
subplot(2,2,3)
imshow(BWsdil);
imBWfilled2 = imfill(BWsdil,'holes');
subplot(2,2,4)
[L,num2] = bwlabel(imBWfilled2);
imshow(imBWfilled2)
title(['Total number of particles: ' num2str(num2)]);
imageRegionAnalyzer(imBWfilled2)
