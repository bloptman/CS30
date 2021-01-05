% The derivation of relevant equations can be found on my GitHub in the Python version
% of this project: https://github.com/bloptman/aharmonic-oscillator/blob/master/Project%202.ipynb

%% Creating the perturbed Hamiltonian

systemDim = 15;  % We need to pick a large enough system size to get convergence of the method.
lmbda = .5;
tol = .01;

H = HPerturbed(systemDim, lmbda)

%% Solving Numerically for the Eigenvalues and Eigenvectors

[evals, evecs] = HermitianEigen(H, tol)

% Let's examine the first four eigenvalues and eigenvectors for the
% perturbed system.

dim = 4;

evals(1:dim) % First four eigenvalues. 
evecs(1:dim,1:dim) % First four eigenvalues.

%% Plotting the Wavefunctions of the Perturbed System

% There is probably a way better way to do all of this, but this was really
% confusing me in MATLAB versus Python...

syms Psi(n,x) % Reqruires Symbolic Toolbox!

Psi(n,x) = hermiteH(n,x) * exp(-(x^2)/2);

numPoints = 100;
xVals = linspace(-5,5,numPoints);

H0 = HPerturbed(systemDim, 0);
[evals0, evecs0] = HermitianEigen(H0, tol);

% Looking at the plots you can compare the first few wavefunctions of the 
% simple quantum harmonic oscillator to the anharmonic oscillator!

figure("Name", "Wavefunctions of the Anharmonic Oscillator")
set(gcf, 'Position',  [100, 100, 1000, 1000])


for ii = 1:dim
    coeffs0 = Coeffs(evecs0(1:dim,ii));
    coeffs = Coeffs(evecs(1:dim,ii));
    
    psi0 = zeros(1,numPoints);
    psi = zeros(1,numPoints);
    
    for jj = 1:dim
        psi0 = psi0 + (coeffs0(jj)*Psi(jj-1,xVals));
        psi = psi + (coeffs(jj)*Psi(jj-1,xVals));
    end
    
    subplot(2,2,ii)
    plot(xVals, psi0, "LineWidth", 2, "LineStyle", "--")
    hold on

    plot(xVals, psi, "LineWidth", 2)
    hold off

    legend("Nonperturbed", "Perturbed", "Location", "southeast")

    title("\Psi_{" + string(ii) + "}(x)")
    xlabel("x (m)")
    ylabel("\Psi(x)")

    grid on
    grid minor
end

sgtitle("Wavefunctions of the Anharmonic Oscillator for \lambda = " + string(lmbda))

saveas(gcf,"WaveFunctions.jpg")