% Laplace Transform
close all
clc
clear

syms t s

f(t) = input("Enter the time signal f(t):");
F(s) = laplace(f);

disp(F(s))

% Inverse Laplace Transform
close all
clc
clear

syms t s

F(s) = input("Enter the Frequency signal F(s):");
f(t) = ilaplace(F);

disp(f(t))

% Verifying First Shifting Property
close all
clc
clear

syms t s a
f(t) = input("Enter the time signal f(t):");
F(s) = laplace(f);
a = input("Enter a:");
G(s) = laplace(exp(a*t)*f(t));
if G(s)==F(s-a)
    disp("First Shifting Property is verified.");
else
    disp("First Shifting Property is not verified.");
end

% Verifying Second Shifting Property - Shifted Signal
close all
clc
clear

syms t s f(t)
f(t) = input("Enter the time signal f(t):");
F(s) = simplify(laplace(f));
a = input("Enter a:");
G(s) = laplace(heaviside(t-a)*f(t-a));
G1(s) = exp(-a*s)*F(s);
if G(s)==G1(s)
    disp("Second Shifting Property is verified for Shifted Signal.");
else
    disp("Second Shifting Property is not verified for Shifted Signal.");
end

% Verifying Second Shifting Property - Truncated Signal
close all
clc
clear

syms t s f(t)
f(t) = input("Enter the time signal f(t):");
F(s) = simplify(laplace(f));
a = input("Enter a:");
G(s) = laplace(heaviside(t-a)*f(t));
G1(s) = exp(-a*s)*laplace(f(t+a));
if G(s)==G1(s)
    disp("Second Shifting Property is verified for Truncated Signal");
else
    disp("Second Shifting Property is not verified for Truncated Signal");
end

% Verifying Multiplication by t
close all
clc
clear

syms t s
f(t) = input("Enter the time signal f(t):");
F(s) = simplify(laplace(f));
F1(s) = laplace(t*f(t));
G(s) = -diff(F,s);
if F1(s)==G(s)
    disp("Multiplication Property is verified.")
else
    disp("Multiplication Property is not verified.")
end
