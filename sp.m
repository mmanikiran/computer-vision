function [img3] = sp (img)

img3 = imnoise(img, "salt & pepper", 0.20);

endfunction