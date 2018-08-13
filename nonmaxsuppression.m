function [y] = nonmaxsuppression (img, angle)

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
  y(i, j) = img(i, j);
  if(angle(i, j) == 45)
   if (img(i,j) != max([lb, c, rt]))
      y(i,j) = 0;
   endif
  
  elseif(angle(i, j) == 90 || angle(i, j) == 270)
   if (img(i,j) != max([t, c, b]))
      y(i,j) = 0;
   endif
  
  elseif(angle(i, j) == 0 || angle(i, j) == 180)
   if (img(i,j) != max([l, c, r]))
      y(i,j) = 0;
   endif
   
   elseif(angle(i, j) == 135 || angle(i, j) == 315)
   if (img(i,j) != max([lt, c, rb]))
      y(i,j) = 0;
   endif
   
  endif
  
  endfor
endfor

endfunction