% Henry Zale
% Due September 15th
% Assignment 2 Solutions

%% Chapter 1 Exercises 1-6, 11-15, 22, 24-27

% 1.)

cuweight = 63.55;

% 2.) 

myAge = 25;
myAge = myAge - 2;
myAge = myAge + 1;

% 3.) 

namelengthmax;

% 4.)

pounds = 5;
ounces = 80;

who;
whos;

clear ounces;
who;
whos;

% 5.) 

intmin;
intmax;

% 6.)

decimal = 1.5;
int32decimal = int32 (decimal);

% 11.)

pounds = 10;
kilos = pounds/2.2;

% 12.)

ftemp = 70;
ctemp = (ftemp - 32) * 5/9;

% 13.) 

miles = 3.2;
km = miles * 1.61;

% 14.)

sind (90)
sin (1.5708)

% 15.) 

r1 = 10;
r2 = 20;
r3 = 30;
Rt = 1/((1/r1)+(1/r2)+(1/r3));

% 22.) 

% Answer: All uppercase letters come before lowercase letters

% 24.)

% Answer: True, True, True, False

% 25.)

x = 25;
y = 15;
x > y;

% 26.)

3*10^5 == 3e5;

% 27.)

log10(10000) == 4;

%% Chapter 2 Exercises 1-4, 6-10, 12, 23, 26, 30, 31

% 1.)

row1 = [2:7];
row2 = [1.1:.2:1.7];
row3 = [8:-2:2];

% 2.)

vec = linspace(0,2*pi,50);

% 3.)

ch2q3 = linspace(2, 3, 6);

% 4.)

ch2q4als = linspace(-5,-1,5)
ch2q4aco = [-5:1:-1]
ch2q4bls = linspace(5,9,3)
ch2q4bco = [5:2:9]
ch2q4cls = linspace(8,4,3)
ch2q4cco = [8:-2:4]

% 6.)

ch2q6 = [-1:.5:1]'

% 7.) 

oddvectorq7 = [10:20];
evenvectorq7 = [10:19];
ch2q7 = oddvectorq7(1:2:end);

% 8.) 

ch2q8 = [7:10; 12 10 8 6]
ch2q8(1,3);
ch2q8(2,:);
ch2q8(1:2,1:2);

% 9.)

mat = [1:4;5:8]
numel(mat)

% 10.)

mat = [1:4;5:8]
mat(1,:) = 1:4
mat(:,3) = 100:101

% 12.)

rows = randi(5, 1);
cols = randi(5, 1);
zeros(rows,cols)

% 23.)

cumsum(3+5+7+9+11)

% 26.)

num = [3:2:9]
den = [1:4]
sum(num./den)

% 30.)

ch2q30 = randi([-10,10],1,5)
ch2q30-3
length (ch2q30(ch2q30>=0))
abs(ch2q30)
max(ch2q30)

% 31.)

ch2q31 = [1:5;6:10;11:15]
max(ch2q31)
max(ch2q31')
max(max(ch2q31))


%% Chapter 3 Exercises 1, 4, 6, 8, 13

% 1.)

iradius = input('What is the inner radius?')
oradius = input('What is the outer radius?')
hollowsphere = ((4*pi)/3)*(oradius^3-iradius^3)

% 4.) 

ch3q4 = input('Enter a matrix: ')
%randi(100,2,2)

% 6.)

fprintf('12345.6789')
fprintf('%10.4f\n', 12345.6789)
% nothing happens because the number is within the specified field
fprintf('%10.2f\n', 12345.6789)
% the decimals are shortened because the field only allows for 2
fprintf('%6.4f\n', 12345.6789)
% nothing happens, field alotted is sufficient
fprintf('%2.4f\n', 12345.6789)
% nothing happens, field is too large to fit.

% 8.)

flowrate = input('Enter the flow in m^3/s: ');
flowconv = flowrate/.028;
fprintf('A flow rate of %5.2f meters per sec\n', flowrate);
fprintf('is equivalent to %5.2f feet per sec\n',flowconv);

% 13.)

x13 = input('Enter the x value: ');
y13 = input('Enter the y value: ');
z13 = input('Enter the z value: ');
xyz13 = [x13,y13,z13]
ch3q13 = xyz13/(sqrt(x13^2+y13^2+z13^2))




