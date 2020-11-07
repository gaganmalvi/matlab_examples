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

ll = limit(f,x,i(1),'left'); % compute the left limit.
rl = limit(f,x,i(2),'right'); % compute the right limit.
d = diff(f,x); % differentiate f wrt x.
c = solve(d==0); % solving f(x) = 0.
g = c(c>i(1) & c<i(2)); % indexing of c.
h = vpa(g,3); % value of c is rounded off to 3 digits.
disp(['The function ',char(f),' has a mean value at ',char(h)])
