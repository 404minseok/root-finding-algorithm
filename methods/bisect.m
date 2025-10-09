function [root, error_bound]=bisect(a0,b0,ep,max_iterate)

% For the given function f(x), an example of a calling sequence 
% might be the following:
%    [root, error_bound]= bisect(1,1.5,1.0E-6,10)
% 
%
% The following will print out for each iteration the values of
%      count, a, b, c, f(c), (b-a)/2
% with c the current iterate and (b-a)/2 the error bound for c.
% The variable count is the index of the current interate.  Tap 
% the carriage return to continue with the iteration. 

if a0 >= b0
    disp('a0 < b0 is not true.  Stop!')
    return
end

format short e
a = a0; b = b0; %Set initial interval from the input
fa = f(a); fb = f(b); %evaluate f(x) at a and b
                      %store them at the variables fa and fb

if sign(fa)*sign(fb) > 0
    disp('f(a0) and f(b0) are of the same sign.  Stop!')
    return
end

c = (a+b)/2;
it_count = 0;
fprintf('\n it_count   a          b          c          f(c)         b-c\n')
fprintf('___________________________________________________________________\n')
while (b-c > ep) && (it_count < max_iterate)
    it_count = it_count + 1; %incrase iteration
    fc = f(c); %evaluate f(x) at c and store it at fc
    fprintf('\n %5d %10.4f %10.4f %10.8f %10.8e %10.8f\n',it_count,a,b,c,fc,b-c)
    if sign(fb)*sign(fc) <= 0
        a = c;
        fa = fc; 
    else
        b = c;
        fb = fc;
    end
    c=(a+b)/2; %set midpoint for the new interval
  
end
fprintf('___________________________________________________________________\n')
format long
root = c
format short e
error_bound = b-c
format short
it_count

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function value = f(x)

% function to define equation for rootfinding problem.   
value = x.^6 - x - 1;

end