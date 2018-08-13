pkg load image
img1 = imread("145px-Lenna.png");

img2 = rgb2gray(img1);

y = zeros(255,1);
for i = 1 : size(img2, 1)
for j = 1 : size(img2, 2)
  y(img2(i, j),1) = y(img2(i,j),1) + 1;
  endfor
endfor

save("histogram.mat", "y");