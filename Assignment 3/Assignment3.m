% CS30 Assignment #3
% Name: Bradon Loptman
% UID: 1518851
% Due: 11/4/20

%Chapter 6

%% 6.3

% The advantage of the pass-by-value scheme is that it does not alter the
% data passed to the function, but instead creates a copy of the data. This
% is advantegous because it can save you from errors and hard to spot bugs.

% The disadvantage of the pass-by-value scheme is copying data to passed to
% a function can be very inefficent. In cases of large amounts of data
% copying the data is both an inefficent use of time and memory, espcially
% when the data that is copied is not being altered or when using user
% defined types.

%% 6.4

disp("Sorting in Ascending Order: ")
disp("Unsorted: ")
a = 10:-1:1;
disp(a)
disp("Sorted: ")
b = ssort(a, "up");
disp(b)

disp("Sorting in Descending Order: ")
disp("Unsorted: ")
a = 1:10;
disp(a)
disp("Sorted: ")
b = ssort(a, "down");
disp(b)

%% 6.16

% Generate a 1x100000 array of random numbers.
data = rand([1,100000]);

% Timing the sorting with the MATLAB sort function.
disp("MATLAB sort function: ")
tic
sort(data);
toc

disp(" ")

% Timing the sorting with our SSORT sort function.
disp("SSORT sort function: ")
tic
ssort(data);
toc

% Clearly, the MATLAB sort function is by far faster than the
% ssort function we implemented!

%% 6.17

% I didn't use the random0 function because it is not found in my edition
% of the textbook. I used the built-in rand function.

% N values to iterate over.
Nvals = [10000, 100000, 200000];

% Array to store toc times.
%Tvals_sort = zeros([1,length(Nvals)]);
%Tvals_ssort = zeros([1,length(Nvals)]);

% Iterating over the array of N values.
for ii = 1:length(Nvals)
    disp("N = " + num2str(Nvals(ii)))
    disp(" ")
    
    data = rand([1,Nvals(ii)]);
    
    % Timing the sorting with the MATLAB sort function.
    disp("MATLAB sort function: ")
    tic
    sort(data);
    toc
    %Tvals_sort(ii) = toc;

    disp(" ")

    % Timing the sorting with our SSORT sort function.
    disp("SSORT sort function: ")
    tic
    ssort(data);
    toc
    %Tvals_ssort(ii) = toc;
    
    disp(" ")
end

% The sorting time for the SSORT function definded by the book roughly
% increases by the square of the number of entries in the array being
% sorted. 

% The sorting time for the MATLAB sort function seems to increase by a
% constant factor as the number of entries in the array to be sorted
% increases.

% The MATLAB sort function is by far more efficent than the SSORT function
% found in the textbook.