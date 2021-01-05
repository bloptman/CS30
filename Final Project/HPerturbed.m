function H = HPerturbed(d, lmbda)

%HPERTURBED Returns the Hamiltonian for the anharmonic oscillator.
%   Returns the Hamiltonian for the anharmonic oscillator with perturbation
%   lambda.

%  Args:
%    d (int): dimension of the Hamiltonian
%    lmbda (float): value of the constant lambda for the anharmonoc oscillator

%  Returns:
%    H (ndarray): d x d Hamiltonian matrix repersentation for the anharmonic oscillator 

dim = d;
H0 = zeros(dim);

for ii = 0:d-1
    H0(ii+1,ii+1) = ii + .5;
end

x4 = zeros(dim);

% Determining that the terms of the Hamiltonian should look like this is
% not trivial and requires knowlege of QM such as raising/lowering
% operators and bracket notation. A good reference for this information is
% David J. Griffiths Intro QM textbook.

for n = 0:(dim-1)
    for m = 0:(dim-1)
        if(n == m)
            x4_term1 = (6*(n^2) + (6*n) + 3) * .25;
            x4(n+1,m+1) = x4_term1;
        end
        
        if(n == m-2)
            x4_term2 = sqrt((n+1)*(n+2))*(n + 3/2);
            x4(n+1,m+1) = x4_term2;
        end
        
        if (n == m+2)
            x4_term3 = sqrt((n-1)*n)*(n-.5);
            x4(n+1,m+1) = x4_term3;
        end
        
        if(n == m-4)
            x4_term4 = sqrt((n+1)*(n+2)*(n+3)*(n+4)) * .25;
            x4(n+1,m+1) = x4_term4;
        end
        
        if(n == m+4)
            x4_term5 = sqrt((n-3)*(n-2)*(n-1)*n) * .25;
            x4(n+1,m+1) = x4_term5;
        end
        
    end
end

h_lambda = lmbda;
H = H0 + h_lambda*x4;

end

