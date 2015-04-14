fileName = 'abalone.data';


%%%%%%%% fopen %%%%%%%%

%% 1
% read each column of a file
id = fopen(fileName, 'r');
line = textscan(id, '%s %f %f %f %f %f %f %f %d', 'delimiter', ',');

% line{1} is column 1
% line{2} is column 2
% ...
% Note: String, char column are cell array so line{1}{1:4}
% int, double column are vector array so line{1}(1:4)


%% 2
% read each column of a file
[a,b,c,d,e,f,g,h,i] = textread('abalone.data', '%s %f %f %f %f %f %f %f %d', 'delimiter',',');

% a is column 1
% b is column 2
% ...


%% 3
% Only for comma separated files with numeric data, read it as a matrix



%% 3
% reads each row as a string
id = fopen(fileName, 'r');
line = textscan(id, '%s'); %or
line = textread('abalone.data', '%s');

% line{1} is line 1
% line{2} is line 1
% ...
% Note: This method is good when you are not aware of the number or types of column.
% you can read each row as string and process it to take out the values


%%%%%%%% g %%%%%%%%

















Note: In most of the file read function in the MATLAB you can also avoid any special character in the data.
Ex.
1.2a 2.3b 4
1.5a 4.1b 5

you can read this as a simple matrix ignoring a & b using '%*'.
