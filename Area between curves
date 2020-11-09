clear
close all
clc

syms x

f(x) = input("Enter first function:");
g(x) = input("Enter second function:");

lower_limit = input("Enter the lower limit:");
upper_limit = input("Enter the upper limit:");

if isempty(lower_limit) && isempty(upper_limit)
    values = double(solve(f - g, x));
    lower_limit = min(values(:));
    upper_limit = max(values(:));
end

disp(['The area is: ', char(vpa(int(abs(f-g), lower_limit, upper_limit), 4))])

range_of_x = lower_limit:0.1:upper_limit;

plot(range_of_x, f(range_of_x), 'r')
hold on
plot(range_of_x, g(range_of_x), 'r')

% Shading
fill([range_of_x, fliplr(range_of_x)], [f(range_of_x), fliplr(g(range_of_x))], 'y')
