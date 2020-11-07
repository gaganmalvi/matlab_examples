% a. Fall Semester 2020-21
% b. Course: MAT1011 (CFE) - ELA
% c. Slot: G1 + TG1
% d. Assessment number 1
% e. Reg. No. 20BCE0810
% f. Name: Gagan Malvi

clear % clear all variables in workspace.
close all % closes all figures whose handles are visible.
clc % clears command window.

syms f(x) % symbolize f(x).
f(x) = piecewise(x<=1, x/2 -1, 1<x, x^3) % declaration of function in question.
fplot(f(x),[0,0.99],'b'); % plotting functions using fplot()
hold on
fplot(f(x),[1,3/2],'g');
a = input('Enter the value of point a =') % input value of point a.
v = subs(f,x,a); % computing value of f(x) at a
plot(a,v,'.','MarkerSize',30); % plot graph
ll = limit(f,x,a,'left'); % left limit
rl = limit(f,x,a,'right'); % right limit
if ll == rl && rl == v % conditional declaration
    disp(['Function f is continuous at ',num2str(a)]) 
else
    disp(['Function f is not continuous at ',num2str(a)])
end
