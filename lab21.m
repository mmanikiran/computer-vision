pkg load image
img1 = imread("baby.png");
figure();

img2 = rgb2gray(img1);
subplot(1,2,1);
imshow(img1);

gamma = 1.2;

img2 = img2.^ gamma;


subplot(1,2,2);
imshow(img2);
