function y = median( inimg )
f1 = medfilt2 (inimg, [3 3]);
f2 = medfilt2 (inimg, [5 5]);
f3 = medfilt2 (inimg, [7 7]);

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