function test
clear all
close all
clc
A=[1,2;3,4;5,6;7,8;9,10];
s=size(A,1)
for i=1+size(A,1):size(A,1)
    A(i,:)=[1,1];
end
A