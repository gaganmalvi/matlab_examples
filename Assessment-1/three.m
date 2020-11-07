% a. Fall Semester 2020-21
% b. Course: MAT1011 (CFE) - ELA
% c. Slot: G1 + TG1
% d. Assessment number 1
% e. Reg. No. 20BCE0810
% f. Name: Gagan Malvi

clear % clear all variables in workspace
close all % close all figures in workspace 
clc % clear command window

syms x % symbolize variable x
f = input('Enter the function = ')
i = input('Enter the interval as a row vector = ')
L = i(2)-i(1);
s = (subs(f,x,i(2))-subs(f,x,i(1)))/(L); % Computing slope of chord AB
d = diff(f,x); % derivative of f wrt x
c = solve(d-s); % computing d-s
h = c(c>i(1) & c<i(2)); % indexing of c
j = vpa(h,3); % value of c is rounded off to 3 digits
disp(['The constant of mean value theorem for function ',char(f),' is c = ',char(j)]) 

