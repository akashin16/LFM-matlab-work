%for centre part
x2 = imread('ZTA_Al2O3_centre.png');
x2 = rgb2gray(x2);
figure(1)
subplot(2,2,1)
imshow(x2)
BW1 = imextendedmin(x2,100);
subplot(2,2,2)
imshow(BW1);
se1 = strel('sphere',3);
afterOpening1 = imopen(BW1,se1);
subplot(2,2,3)
imshow(afterOpening1);
imBWfilled1 = imfill(afterOpening1,'holes');
subplot(2,2,4)
[L,num1] = bwlabel(imBWfilled1);
imshow(imBWfilled1)
title(['Total number of particles: ' num2str(num1)]);
imageRegionAnalyzer(imBWfilled1)

