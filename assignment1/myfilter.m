function [y] = myfilter (img, z)

#img3 = zeros(size(img,1), size(img,2));

#z = ones(3,3)/9;
y = zeros(size(img,1), size(img,2));

for i = 1 : size(img, 1)
  for j = 1 : size(img, 2)
  lt = 0;
  t =0;
  rt =0;
  l = 0;
  c = img(i,j);
  r = 0;
  lb = 0;
  b =0;
  rb =0;
  
  if(i-1 > 0 && j-1 > 0)
    lt = img(i-1, j-1);
  endif
  
  if(i-1 > 0) 
    t = img(i-1, j);
  endif
  
  if(i-1 > 0 && j+1 < size(img,2))
    rt = img(i-1, j+1);
  endif

  if(j-1 > 0) 
    l = img(i, j-1);
  endif

  if(j+1 < size(img,2))
    r = img(i, j+1);
  endif
  
  if(i+1 < size(img,1) && j-1 > 0)
    lb = img(i+1, j-1);
  endif
  
  if(i+1 < size(img,1) && j-1 > 0)
    lb = img(i+1, j-1);
  endif
  
  if(i+1 < size(img,1))
    b = img(i+1, j);
  endif
  
  if(i+1 < size(img,1) && j+1 < size(img,2))
    rb = img(i+1, j+1);
  endif
  
  y(i,j) = z(1,1)*lt + z(1,2)*t + z(1,3)*rt + z(2,1)*l + z(2,2)*c + z(2,3)*r + z(3,1)*lb + z(3,2)*b + z(3,3)*rb;
  
  if(y(i,j) < 0)
    y(i,j) = -1 * y(i,j);
  endif
  
  endfor
endfor

endfunction