pkg load image
img1 = imread("Lenna.png");

subplot(3,3,1);
imshow(img1);
subplot(3,3,2);
img2 = rgb2gray(img1);
imshow(img2);


img3 = 255 .- img2;
subplot(3,3,3)
imshow(img3);

subplot(3,3,6)
img6 = edge(img2, "Canny");
imshow(img6);


subplot(3,3,7);
y = zeros(255);
for i = 1 : size(img2, 1)
for j = 1 : size(img2, 2)
  y(img2(i, j)) = y(img2(i,j)) + 1;
  endfor
endfor

plot(y);