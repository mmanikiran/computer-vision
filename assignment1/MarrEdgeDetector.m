pkg load image;

img1 = imread("Lenna.png");
z = fspecial("gaussian", 3);
img2 = rgb2gray(img1);
img3 = myfilter(img2, z);

x = [0 1 0 ; 1 -4 1 ; 0 1 0];

gx = myfilter(img3, x);

figure();
subplot(1,3,1);
imshow(img1);

subplot(1,3,2);
imshow(mat2gray(img3));

subplot(1,3,3);
imshow(mat2gray(gx));
