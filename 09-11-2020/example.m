clear
close all
clc
syms x
f(x) = input('Enter f(x) = ');
g(x) = input('Enter g(x) = ');
a = input('The lower limit a = ');
b = input('The upper limit b = ');
A = vpa(int(abs(f-g),a,b),4)
u = a:.01:b;
plot(u,f(u),'r')
p = [u,fliplr(u)]
fill(p,[f(u),fliplr(g(u))],'y')
