function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

debug = false;

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    #temp_theta = theta(0) - alpha * (1/m) * sum(theta(0) * ones(0,m) + theta(1) * X

    h = X * theta;
    error = h - y;
    theta_change = X' * error * alpha * (1/m);
    theta = theta - theta_change;
    if (debug && iter < 4)
      printf("theta: %.05f\n", theta)
      printf("cost: %.05f\n\n", computeCost(X, y, theta))
    endif

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

endfor

end
