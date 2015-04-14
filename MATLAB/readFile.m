%% 1
% read each column of a file
id = fopen('abalone.data', 'r');
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
data = csvread('glass.data');
% data will be a Matrix of doubles as the data have double values
data = csvread('haberman.data');
% data will be a Matrix of singles/ integers as the data have integer values
% Note: read more about offsets by using the command 'help csvread'
% M = csvread(filename,R1,C1)
% M = csvread(filename,R1,C1,[R1 C1 R2 C2])


%% 4
% This is exactly same as CSV but this does not restrcit the delimiter only to comma. It can be any ASCII char.
A = dlmread('haberman$separated.data','$');
% Note: A = csvread('haberman$separated.data','$'); will give error here.


%% 5
% This works fine for most of the datafiles, including images etc.
A = importdata('abalone.data');
% A = 
%
%          data: [4177x8 double]
%      textdata: {4177x1 cell}
%    rowheaders: {4177x1 cell}
% Note: This function should be your first choice to read a datafile.


%% 6
% reads each row as a string
id = fopen(fileName, 'r');
line = textscan(id, '%s'); %or
line = textread('abalone.data', '%s');
% line{1} is line 1
% line{2} is line 1
% ...
% Note: This method is good when you are not aware of the number or types of column.
% you can read each row as string and process it to take out the values

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Note:
% 1) For files with headers we can use the offset arguments of the functions
% Ex. data = csvread('glass.data',1,0); % or
%  data = dlmread('glass.data',1,0);

% 2) In most of the file read function in the MATLAB you can also avoid any special character in the data.
% Ex.
% 1.2a 2.3b 4
% 1.5a 4.1b 5

% you can read this as a simple matrix ignoring a & b using '%*'.
