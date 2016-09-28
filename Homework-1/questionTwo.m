function [ out_img ] = questionTwo(in_img, method, alpha)
g = rgb2gray(in_img);
new_img = imresize(g, double(alpha), method);
out_img = imresize(new_img, 1.0/double(alpha), method);
subplot(1, 2, 1)
imshow(in_img)
subplot(1, 2, 2)
imshow(out_img)
end

