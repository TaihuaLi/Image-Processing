function [ B ] = questionOne( A, alpha )
[m, n] = size(A); %assuming gray scale
if alpha < 0 %shrinking
    f = abs(alpha);
    B = A([1:f:end], [1:f:end]);
imshow(B);
title('Shrunk');
elseif alpha > 0 %zooming
    exp = []; 
    for i = 1:n
        exp=cat(2, exp, ones(1, alpha)*i);
    end
    B = A(:, exp);
    exp = [];
    for i = 1:m
        exp=cat(2, exp, ones(1, alpha)*i);
    end
    B = B(exp, :);
imshow(B);
title('Zoomed');
end
end
