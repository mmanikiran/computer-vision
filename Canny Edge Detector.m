pkg load image;

img1 = imread("145px-Lenna.png");
z = fspecial("gaussian", 3);
img2 = rgb2gray(img1);
img3 = myfilter(img2, z);

x = [-1 0 1; -2 0 2; -1 0 1];
y = [-1 -2 -1; 0 0 0; 1 2 1];
gx = myfilter(img3, x);
gy = myfilter(img3, y);
figure();
subplot(2,3,1);
imshow(mat2gray(img3));

subplot(2,3,2);
imshow(mat2gray(gx));

subplot(2,3,3);
imshow(mat2gray(gy));

gm = gx .+ gy;


subplot(2,3,4);
imshow(mat2gray(gm));

slope = gy ./ gx;
angle = atan(slope) ;
angle = angle .* (180/pi);

for i = 1 : size(angle, 1)
  for j = 1 : size(angle, 2)
    
      angle(i, j) = 45 * round((angle(i, j))/45);
    
  endfor
endfor
t = zeros(size(ce, 1), size(ce, 2));


ce = nonmaxsuppression(gm, angle);

for i = 1 : size(ce, 1)
  for j = 1 : size(ce, 2)
    if(ce(i,j) > 20)
      t(i,j) = ce(i,j);
    endif
  endfor
endfor

fi = threshold(ce, 200);


subplot(2,3,5);
imshow(mat2gray(ce));

subplot(2,3,6);
imshow(mat2gray(fi));


