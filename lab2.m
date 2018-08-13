pkg load image;

img = imread("Lenna.png");
imgred = img(:, :, 1);
imgblue = img(:, :, 3);
imggreen = img(:, :, 2);

a = zeros(size(img,1), size(img,2));

imgr = colloc(imgred, a, a);
imshow(imgr);