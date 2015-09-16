function S = smean(x, p)
% https://en.wikipedia.org/wiki/Stolarsky_mean
n = length(x) - 1;
f = @(x)x^p;
xx = factorial(n) * dd(f, x);
k = 1;
for i = 1:n
    k = k * p;
    p = p - 1;
end
invf = @(y)(y/k)^(1/(p));
S = invf(xx);
end

function y = dd(f, x)
% https://en.wikipedia.org/wiki/Divided_differences
y = 0;
for j = 1:length(x)
    d = 1;
    for k = 1:length(x)
        if k ~= j
            d = d * (x(j)-x(k));
        end
    end
    y = y + f(x(j))/d;
end
end