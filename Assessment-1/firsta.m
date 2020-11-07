% a. Fall Semester 2020-21
% b. Course: MAT1011 (CFE) - ELA
% c. Slot: G1 + TG1
% d. Assessment number 1
% e. Reg. No. 20BCE0810
% f. Name: Gagan Malvi

clear % clear all variables in workspace
close all % close all figures in workspace 
clc % clear command window

syms x % symbolize x
f = input("Enter the input function = ") % input function in question
fplot(f,[-10,10]); % plot the function using fplot()
hold on 
a = input("Enter the point a = ") % input point a
v = subs(f,x,a); % compute function value at point a
plot(a,v,'.','MarkerSize',30); % plot the function at point a
ll = limit(f,x,a,'Left'); % left limit 
rl = limit(f,x,a,'Right'); % right limit
if ll == rl && rl == v % checking for continuity via a conditional declaration
    disp(['Function f is continuous at ',num2str(a)])
else
    disp(['Function f is not continuous at ',num2str(a)])
end
