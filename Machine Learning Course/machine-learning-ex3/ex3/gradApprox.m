function gradApprox = gradCheck(J, theta, EPSILON, n)
  for i = 1:n,
    thetaPlus = theta;
    thetaMinus = theta;
    thetaPlus(i) = thetaPlus(i) + EPSILON;
    thetaMinus(i) = thetaMinus(i) - EPSILON;
    gradApprox(i) = (J(thetaPlus) - J(thetaMinus)) / (2*EPSILON)
  end;
end