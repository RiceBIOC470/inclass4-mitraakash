%Akash Mitra
%am132

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

fid=fopen('AnswerInclass4.txt', 'w');
fprintf(fid, 'Random numbers 1\n');
var1=rand(10,13)
for i = 1:size(var1,1)
    dlmwrite('AnswerInclass4.txt',var1(i,:), '-append');
end
fclose(fid);
fid=fopen('AnswerInclass4.txt', 'a');
fprintf(fid, 'Random numbers 2\n');
var2=rand(9,7)
for i = 1:size(var2,1)
    dlmwrite('AnswerInclass4.txt',var2(i,:), '-append');
end
% b.
file=fopen('AnswerInclass4.txt', 'r');
line1=fgetl(file);
actual_line=fgetl(file);
arr1=strsplit(actual_line, "\t")


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

input_array=randi([0,10],1, 20)
greater_10=sum(input_array) >= 10