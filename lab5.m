pkg load image;

img1 = imread("Lenna.png");
img2 = rgb2gray(img1);
img3 = myfilter(img2);
subplot(1,2,1)
imshow(img2);
subplot(1,2,2);
imshow(img3);
