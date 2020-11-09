clear
close all
clc

syms x

f(x) = input("Enter first function:");

lower_limit = input("Enter the lower limit:");
upper_limit = input("Enter the upper limit:");

if isempty(lower_limit) && isempty(upper_limit)
    values = double(solve(f, x));
    lower_limit = min(values(:));
    upper_limit = max(values(:));
end

disp(['The average is: ', char(vpa(int(f, lower_limit, upper_limit)/(upper_limit - lower_limit), 3))])
