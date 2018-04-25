pkg load image
img1 = imread("145px-Lenna.png");

img2 = rgb2gray(img1);


h = fspecial("gaussian", 3);

F = fft(img2);
H = fft(h);
B = conv2(F,H);

J = imfilter(img2, h);
figure();

subplot(1,2,1);
imshow(img2);

subplot(1,2,2);
imshow(J);
