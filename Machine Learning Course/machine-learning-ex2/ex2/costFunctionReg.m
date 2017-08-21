function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);

leftJ = (-y)' * log(h);
rightJ = (1-y)' * log(1-h);

J = 1/m * (sum(leftJ) - sum(rightJ));

theta(1) = 0;
grad = 1/m * (X' * (h-y));

reg_j_term = (lambda/(2*m)) * (theta' * theta);
reg_grad_term = (lambda/m) * theta;
 
grad = grad + reg_grad_term;
J = J + reg_j_term;

% =============================================================

end
