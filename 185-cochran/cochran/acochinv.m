function g=acochinv(P, k, n)
% ACOCHINV
% Returns the inverse of the "anti-Cochran's" statistics, 
% min(S^2)/sum(S^2), cumulative probability.
%
% g=acochinv(P, k, n), where
% 	  P is the probability (e.g., 0.95),
% 	  k is the number of variances,
% 	  n is the number of degrees of freedom for each variance.
% The input quantities should be scalars or matrices of 
% the same size.
%
% The use of the function. Let X is a set of k chi-squared 
% distributed sums of squares (or the corresponding variances), 
% each of n degrees of freedom. To accept at P*100 percent level
% that the MINIMUM variance differ from the other ones, one 
% should examine:
%     min(X)/sum(X) <= acochinv(P, k, n)
% See also COCH_INV

if nargin <  3, 
    error('Requires three input arguments.'); 
end

g=1./(1+(k-1).*finv(1-(1-P)./k, (k-1).*n, n));
