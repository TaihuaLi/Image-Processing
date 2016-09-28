function [ out_img ] = questionThree(in_img, levels)
d = 256.0/double(levels);
g = rgb2gray(in_img);
out_img = g/double(d);
subplot(1, 2, 1)
imshow(in_img)
subplot(1, 2, 2)
imshow(out_img)
end

