clc
clear all
CarData=csvread('Data.csv',1,0);%reading Data from csv with 1,0 as offset 
net = fitnet(12,'trainbr');%initalizing neural net with 12 neurons
n=size(CarData);

Xparam=zeros(n(1),8);
Yparam=zeros(n(1),2);
for i=[1:n(1)]
    Xparam(i,1:8) = CarData(i,1:8);
    Yparam(i,1:2) = CarData(i,9:10);
end
net=train(net,Xparam',Yparam')

