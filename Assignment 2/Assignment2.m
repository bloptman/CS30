% CS30 Assignment #2
% Name: Bradon Loptman
% UID: 1518851
% Due: 10/20/20

%%Chapter 4

%% 4.1
% (a) This evaluates to false as clearly 5 is less than 5.5.
disp(5 >= 5.5)

% (b) This evaluates to false as 34 is not less than 34.
disp(34 < 34)

% (c) Let's break this into parts. 17 - pi = 13.86. 13.86 < 15
% evaluates to true. pi = 3.14 < 3 evaluates to false. Thus, 
% xor(true,false) evaluates to true!
disp(xor(17 - pi < 15, pi < 3))

% (d) True corresponds to 1 and false corresponds to 0. Thus,
% 1 > 0 which evaluates to true.
disp(true > false)

% (e) The statement is false. This is because ~(35/17) evaluates to false
% (0) so ~~(35/17) evaluates to true (1). 1 == (35/17) is false as 35/17 =
% 2.05.

disp(~~(35/17) == (35/17))

% (f) (7<=8) evaluates to true. (3/2 == 1) evalutes to false. Putting it 
% all together the entire statemen evalutes to false.
disp((7 <= 8) == (3/2 == 1))

% (g) (3.3 > 2) evaluates to true (or 1). Thus, 17.5 && 1 overall 
% evaluates to true.
disp(17.5 && (3.3 > 2.))

%% 4.5
x = 1;
y = -3;
result = 0;

% first statement
if x >= 0
    if y >= 0
        result = x + y;
    end
end

% second statement
if x >= 0
    if y < 0
        result = x + y^2;
    end
end
 
% third statement
if x < 0
    if y >= 0
        result = x^2 + y;
    end
end

% fourth statement
if x < 0
    if y < 0
        result = x^2 + y^2;
    end
end

fprintf("The result is %f\n", result)

%% 4.11
salary = input("Please input your annual salary: ");

medicareTax = salary * .015;

incomeTax = 0;

if salary < 6000
    %TAX FREE BABY!!!!
end

if salary > 6000 && salary < 34000
    incomeTax = incomeTax + (.15 * (salary - 6000));
end

if salary > 34000 && salary < 80000
    incomeTax = incomeTax + 4200 + (.3 * (salary - 34000));
end

if salary > 80000 && salary < 180000
    incomeTax = incomeTax + 18000 + (.4 * (salary - 80000));
end

if salary > 180000
    incomeTax = incomeTax + 58000 + (.45 * (salary - 180000));
end

fprintf("The income tax owed is %f. \n", incomeTax)
fprintf("The medicare levy is %f.\n", medicareTax)
fprintf("The total tax payable is %f. \n", incomeTax + medicareTax)

%%Chapter 5

%% 5.6
% (a) This for loop will run 32768 + 32767 + 1 =65535 times. We get the
% extra +1 since we must count zero as we increment from -32768 to 32767.

a = 0;
for ii = -32768:32767
    a = a + 1;
end

% (b) This for loop never will run since the array ii = 32768:32767 is
% empty!

b = 0;
for ii = 32768:32767
    b = b + 1;
end

% (c) This for loop will run once. It starts at 2 and then increments 4,
% but this is puts it past the ending value of 3, so our array only has one
% element.

c = 0;
for kk = 2:4:3
    c = c + 1;
end

% (d) This for loop will run 5 times. This is because MATLAB assigns the
% value of the columns of the array to the loop variable.

d = 0;
for jj = ones(5,5)
    d = d + 1;
end

%% 5.7
% (a) This for loop will run 25 times. The value of ires at the end of the
% for loop will therefore be 25.

ires = 0;
for index = -12:12
    ires = ires + 1;
end

disp(ires)

% (b) The values of index will be 10, 8, 6, 4, 2, so the loop will iterate 
% 5 times. The value of ires will be 10 + 8 + 4 + 2 = 30 since when index
% equals 6 we skip to the next iteration of the loop.

ires = 0;
for index = 10:-2:1
    if index == 6
        continue;
    end
    ires = ires + index;
end

disp(ires)

% (c) This time the loop will only iterate 3 times. On the third iteration
% we break out of the for loop. Thus, the value of ires will be 10 + 8 =
% 18.

ires = 0;
for index = 10:-2:1
    if index == 6
        break;
    end
    ires = ires + index;
end

disp(ires)

% (d) index1 = [10, 8, 6, 4, 2], thus at each iteration we get the
% following:
% index1 = 10 -> 2:2:10 = [2, 4, 6, 8, 10] -> ires = 2 + 4 = 6
% index1 = 8 -> 2:2:8 = [2, 4, 6, 8] -> ires = 6 + 2 + 4 = 12
% index = 6 -> 2:2:6 = [2, 4, 6] -> ires = 12 + 2 + 4 = 18
% index = 4 -> 2:2:4 = [2, 4] -> ires = 18 + 2 + 4 = 24
% index = 2 -> 2:2:2 = [2] -> ires = 24 + 2 = 26
% Thus, ires = 26 at the end of both loops. The outter most loop executes 5
% times. The inner loop executes 3 + 3 + 3 + 2 + 1 = 12 times.

ires = 0;
n_1 = 0;
n_2 = 0;

for index1 = 10:-2:1
    n_1 = n_1 + 1;
    for index2 = 2:2:index1
        n_2 = n_2 + 1;
        if index2 == 6
            break
        end
        ires = ires + index2;
    end
end

disp(ires)
disp(n_1)
disp(n_2)

%% 5.27

% This is how the book defines the start of the Fibonacci sequence but 
% this is not the typical definition. Usually, f1 = 1, f2 = 1.

f1 = 1;
f2 = 2;
temp = f1;


fibN = input("Which Fibonacci number would you like to know? ");

switch fibN
    case 1
        fprintf("F1 = 1.\n")
        
    case 2
        fprintf("F2 = 2.\n")
        
    otherwise
        n = 3;
        while n <= fibN
            temp = f2;
            f2 = f1 + f2;
            f1 = temp;
            n = n + 1;
        end
        fprintf("F%d = %d\n",fibN,f2)
end

%% Example 5.6
%Implmenting example 5.6 as it appears in the textbook.

n_points = input("Enter the number of input [x,y] points: ");

for ii = 1:n_points
    temp = input("Enter [x,y] pair: ");
    x(ii) = temp(1);
    y(ii) = temp(2);
end

sum_x = 0;
sum_y = 0;
sum_x2 = 0;
sum_xy = 0;

for ii = 1:n_points
    sum_x = sum_x + x(ii);
    sum_y = sum_y + y(ii);
    sum_x2 = sum_x2 + x(ii)^2;
    sum_xy = sum_xy + x(ii) * y(ii);
end

x_bar = sum_x/n_points;
y_bar = sum_y/n_points;
slope = (sum_xy - sum_x * y_bar)/(sum_x2 - sum_x * x_bar);
y_int = y_bar - slope * x_bar;

disp("Regression coefficients for the least-squares line: ");
fprintf("Slope(m) = %8.3f\n", slope);
fprintf("Intercept(b) = %8.3f\n", y_int);
fprintf("No. of points = %8.3d\n", n_points);

plot(x,y,'bo');
hold on;

xmin = min(x);
xmax = max(x);
ymin = slope * xmin + y_int;
ymax = slope * xmax + y_int;

plot([xmin xmax], [ymin ymax], 'r-', 'LineWidth', 2);
hold off;

title('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input data', 'Fitted Line');
grid on