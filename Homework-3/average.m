function y = average( inimg )
h1 = fspecial('average', [3 3]);
h2 = fspecial('average', [5 5]);
h3 = fspecial('average', [7 7]);

f1 = imfilter(inimg, h1);
f2 = imfilter(inimg, h2);
f3 = imfilter(inimg, h3);

subplot(2, 2, 1);
imshow(inimg);
title('original');
subplot(2, 2, 2);
imshow(f1);
title('3x3 window');
subplot(2, 2, 3);
imshow(f2);
title('5x5 window');
subplot(2, 2, 4);
imshow(f3);
title('7x7 window');

end

