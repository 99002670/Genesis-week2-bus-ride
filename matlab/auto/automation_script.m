% @author Milind Mohapatra
% @date 25.09.2020
% @description This script displays the number of occurrences of a given
% string in the given text file

%% Import data
clear all;
clc;
file = fopen('file.txt');
words = textscan(file,'%s');
fclose(file);

%% Find number of occurrences of a word
text = '';

for i=1:length(words{1})
    str=char(words{1}(i));
    text = string(text) + ' ' + string(str);
end
pattern = "for";
regex = regexp(text, pattern);


%% Display
disp("Number of occurrences of word 'for' in the text file")
length(regex)
