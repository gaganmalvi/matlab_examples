clear
close all
clc

syms x y real
f = input('Enter fxn f(x,y) = ');
I = input('Enter the point (a,b) as a row vector = ')
a = I(1);
b = I(2);
n = input('Enter the order of the series = ')
tys = taylor(f,[x,y],[a,b],'order',n)
subplot(1,2,1);
ezsurf(f) % Plot the function f as a surface.
subplot(1,2,2);
ezsurf(tys) % Taylor series of f.
