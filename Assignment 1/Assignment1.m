% CS30 Assignment #1
% Name: Bradon Loptman
% UID: 1518851
% Due: 9/29/20

%% 2.1
array1 = [0 .5 2.1 -3.5 5; -.1 -1.2 -6.6 1.1 3.4; 1.2 .1 .5 -.4 1.3; 1.1 5.1 0 1.4 -2.1];

% (a)
% The size of the array is 4x5 as it has 4 rows and 5 columns.
% We can verify this with MATLAB using the size() function.

size(array1)

% (b)
% The value of array1(1,4) is the value of the entry in the 
% first row and fourth column. We can see that this value is -3.5.
% This is verified with MATLAB below.

array1(1,4)

% (c)
% The value of array1(9) is the nineth entry of the array in memory.
% MATLAB places values into memory column first so array1(9) = array1(1,3)
% which is 2.1. This is verified with MATLAB below.

array1(9)

% (d) 
% The subarray array1(:,1:2:4) contains all the rows of array1
% of columns 1 and 3. So it's size is 4x2 and its value is
% [0 2.1; -.1 -6.6; 1.2 .5; 1.1 0]. This is verified with MATLAB below.

array1(:,1:2:4)
size(array1(:,1:2:4))

% (e)
% The subarray array1([1 3], [end-1 end]) contains rows 1 and 3 of
% columns 4 and 5 (since end = 5 since it is indexing the columns).
% The size of this subarray is 2x2 and its value is [-3.5 5; -.4 1.3].
% This is verified with MATLAB below.

array1([1 3], [end-1 end])
size(array1([1 3], [end-1 end]))

%% 2.2

%These are fairly simple to determine. Variable names in MATLAB must
% begin with a alphabetic character and can only contain letters, numbers,
% and underscores. Any variable name that does not meet this criteria is
% invalid. Applying this criteria to the given variable names results in:

% (a) Yes
% (b) No
% (c) No
% (d) Yes
% (e) No
% (f) No 

% You can verify the above statements directly in MATLAB. 
% Uncomment the commented out delcarations to see they don't work!

dog1 = 1;
%1dog = 1;
%dogs&cats = 1;
Do_you_know_the_way_to_san_jose = 1;
%_help = 1;
%What's_up? = 1;


%%
%%2.3

% (a) 
% The array starts at 2 and increments the next value 3 so long as it is
% less than or equal to than 12. Thus, we have the following array:
% a = [2, 5, 8, 11]
% The size is 1x4.

a = 2:3:12
size(a)

% (b) 
% The matrix is composed of 3 columns. Each column is the transpose of a.
% Thus, we get the following matrix:
% b =[2 2 2; 5 5 5; 8 8 8; 11 11 11]
% The size is 4x3.

b = [a' a' a']
size(b)

% (c)
% The subarray c is composed of rows 1 and 3 of columns 1 and 3 of matrix b.
% Thus, the size of c is 2x2 and its value is c = [2 2; 8 8].

c = b(1:2:3,1:2:3)
size(c)

% (d)
% First, we will determine a(2:4). a(2:4) is the second through
% fourth entries of a which is [5 8 11]. b(2,:) is the second row of all
% of the columns of b which is [5 5 5]. Thus, d = a(2:4) + b(2,:) 
% = [10 13 16]. The size of d is 1x3.

d = a(2:4) + b(2,:)
size(d)

% (e)
% The function zeros(1,3) produces an array of size 1x3 of zeros.
% Similarily, ones(3,1) produces an array of size 3x1 of ones. Since it is 
% transposed, the array is of size 1x3. 3:5' procudes an array [3 4 5]
% since 5' = 5 since it is a scalar. Putting all of this information
% together we get that w = [0 0 0 1 1 1 3 4 5] and has size 1x9.

w = [zeros(1,3) ones(3,1)' 3:5']
size(w)

% (f)
% b([1 3], 2) is rows 1 and 3 of column 2 of b which is [2; 8] while 
% b([3 1], 2) is rows  3 and 1 of column 2 which is [8; 2]. We are replacing
% [2; 8] by [8; 2] in matrix b. Thus, the final value of matrix b is:
% b = [2 8 2; 5 5 5; 8 2 8; 11 11 11] and it has size 4x3.

b([1 3], 2) = b([3 1], 2)
size(b)

% (g) 
% 1:-1:5 produces an empty array as it starts at 1 and then decrements by
% 1 until it reaches 5, which is not possible. Thus, e = [] and has a size
% 1x0.

e = 1:-1:5
size(e)

%% 2.4
array1 = [2.2 0 -2.1 -3.5 6; 0 -3 -5.6 2.8 2.3; 2.1 .5 .1 -.4 5.3; -1.4 7.2 -2.6 1.1 -3.0];

% (a)
% The subarray array1(4,:) contains the fourth row of all of the columns of array1.
% Therefore, it has the value [-1.4 7.2 -2.6 1.1 -3].

array1(4,:)

% (b)
% The subarray array1(:,4) contains all rows of the the fourth column of
% array1. Therefore, it has the value [-3.5; 2.8; -.4; 1.1].

array1(:,4)

% (c)
% The subarray array1(1:2:3, [3 3 4]) contains rows 1 and 3 of columns 3,
% 3, and 4 of array1. Therefore, it has the value [-2.1  -2.1 -3.5; .1 .1 -.4]; 

array1(1:2:3, [3 3 4])

% (d)
% The subarray array1([3 3], :) contains rows 3 and 3 of all columns
% of array1. Therefore, it has the value [2.1 .5 .1 -.4 5.3; 2.1 .5 .1 -.4 5.3].

array1([3 3], :)

%% 2.5
value = 10*pi; %3.1459....

% (a) 
% disp(['value = ' num2str(value)]) displays the "value = " followed by
% 10pi with 4 numbers after the decimal point. In full, the following
% string would be displayed: "value = 31.4159". We can verify this in
% MATLAB below.

disp(['value = ' num2str(value)]);

% (b)
% This is similar to the previous problem, but instead of converting a
% floating point number to a string we convert an integer to a string so we
% do not have any numbers after the decimal. The following string would be
% displayed: "value = 31". This is verifed below.

disp(['value = ' int2str(value)]);

% (c)
% fprintf('value = %e\n', value) displays "value = " follwing by 10pi in
% exponential format followed by a new line (so the next print statement
% will be on its own line). The following string would be displayed: "value
% = 3.141593e+01". This is verifed below.

fprintf('value = %e\n', value);

% (d)
% This is similar to the above problem but instead of using exponential
% formate the variable value will be displayed in floating point format.
% The following string would be displayed: "value = 31.415927". 
% This is verifed below.

fprintf('value = %f\n', value);

% (e)
% This is similar to the previous problems but this statement will print
% the variable value in either exponential or floating point form depending
% on which is shortest. In this case the floating point form is shorter so
% it will be used. The following string would be displayed: "value =
% 31.4159". This is verifed below.

fprintf('value = %g\n', value);

% (f)
% fprintf('value = %12.4f\n', value) displays something very similar to
% part (d) but this time the variable value is forced to have a width of 12
% characters with 4 numbers after the decimal point. Since the actual
% number represented by value is less than 12 characters long (it's only 6 characters) 
% we will have white space. The following string would be displayed: 
% "value =      31.4159". This is verifed below.

fprintf('value = %12.4f\n', value);

% The following would be displayed if all commands were run at once:
% value = 31.4159
% value = 31
% value = 3.141593e+01
% value = 31.415927
% value = 31.4159
% value =      31.4159

%% 2.6
a = [2 1; -1 4];
b = [-1 3; 0 2];
c = [2; 1];
d = eye(2);

% (a)
% Since we are operating on two matricies we add matrix elements of the same 
% index together. Thus, a + b = [1 4; -1 6].

a + b

% (b)
% Since both variable represent matrices, a * d performs matrix
% multiplication. Both matrices have size 2x2 so the operation is well
% defined. Since d is the identity matrix a * d = a = [2 1; -1 4;].

a * d

% (c)
% This time we are performing element-wise multiplication between a and d.
% Since both matrices have the same size this is a well defined operation
% and results in the following: a .* d = [2 0; 0 4].

a .* d

% (d)
% Here we want to perform matrix multiplication between matrix a and column
% vector c. Since the dimension of a is 2x2 and the dimension of c is 2x1
% matrix multiplication is well defined. Performing the operation we find
% a * c = [5; 2].

a * c

% (e)
% Here we want to perform element-wise multiplication between a and c.
% Since c has the same number of rows as a has columns we multiply c by
% each column of a element-wise and find that a .* c = [4 2; -1 4].

a .* c 

% (f)
% This operation performs matrix division from the left. That is, it
% applies the inverse of a to the left of b, which is the same as the
% matrix multiplication inv(a)*b. Using Cramer's rule to find inv(a) we
% find inv(a) = [4/9 -1/9; 1/9 2/9]. Multiplying this times b we find 
% a\b = [-.4444 1.1111; -.1111 .7778].

a \ b

% (g)
% This operation performs array left division. That is, it performs
% element-wise division of a by b. Doing so
% a .\ b = [-.5 3; 0 .5]

a .\ b

% (h)
% Since matricies a and b have the same dimension we can perform this
% operation. Here we raise the elements of a by b element-wise. Doing so,
% we find that a .^ b = [.5 1; 1 16].

a .^ b

%% 2.10

% We can convert the given linear system of equations into 
% a matrix equation Ax = b. We can solve for x by multiplying by
% the inverse of A on the left on both sides of the equation.

A = [ -2 5 2 3 4 -1; 2 -1 -5 -2 6 4; -1 6 -4 -5 3 -1; 4 3 -6 -5 -2 -2; -3 6 4 2 -5 4; 2 4 4 4 5 -4];
b = [-3 1 -6 10 -6 -2]';

% The solution to the system of linear equations is the following vector:
x = inv(A)*b

%% 2.12

p1 = input("Please enter the coordinates for the first point in the form [x,y]: ");
p2 = input("Please enter the coordinates for the second point in the form [x,y]: ");

dist = sqrt((p1(1)-p2(1))^2 + (p1(2)-p2(2))^2);
fprintf("The distance between the two points is %f. \n", dist)

%% 2.15

p1 = input("Enter the coordinates for the first point in the form [x,y,z]: ");
p2 = input("Enter the coordinates for the second point in the form [x,y,z]: ");

dist = sqrt((p1(1)-p2(1))^2 + (p1(2)-p2(2))^2 + (p1(3)-p2(3))^2);
fprintf("The distance between the two points is %f. \n", dist)

%% 2.19

v1 = input("Please enter the components of the first two dimensional vector in the form [x,y]: ");
v2 = input("Please enter the components of the second  two dimensional vector in the form [x,y]: ");

theta = acosd(dot(v1,v2)/(norm(v1)*norm(v2)));
fprintf("The angle between the two vectors is %f degrees. \n", theta)

