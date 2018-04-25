pkg load image
img1 = imread("Lenna.png");
img2 = rgb2gray(img1);

for i = 1 : size(img2, 1)
  for j = 1 : size(img2, 2)
  
    if(i + j < size(img2, 1) || mod(j,2) == 0)
      img2(i, j) = 255;
      else
       img2(i, j) = 0;
    endif
      
    
    
  endfor
endfor

imshow(img2);

  