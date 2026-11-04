% Extract MNIST Images With MATLAB
% MATLAB code for extracting MNIST dataset images.

% MNIST Dataset:
% http://yann.lecun.com/exdb/mnist/

% Repository:
% https://github.com/MacwinWin/ExtractMNISTImagesWithMATLAB.git

addpath(genpath('./fashion_all'))
close all
clear all
clc

%Read data
imagestest = loadMNISTImages('t10k-images-idx3-ubyte');
labelstest = loadMNISTLabels('t10k-labels-idx1-ubyte');
imagestrain = loadMNISTImages('train-images-idx3-ubyte');
labelstrain = loadMNISTLabels('train-labels-idx1-ubyte');
[n,m]=size(imagestrain);
[n,mt]=size(imagestest);
name{1+0}='T-shirt/top';
name{1+1}='Trouser';
name{1+2}='Pullover';
name{1+3}='Dress';
name{1+4}='Coat';
name{1+5}='Sandal';
name{1+6}='Shirt';
name{1+7 }='Sneaker';
name{1+8 }='Bag';
name{1+9 }='Ankle boot';


%Select sample of test image
iY=randi(mt,1,1);
Y=imagestest(:,iY);
fprintf('selected image Y: %s\n', name{1+labelstest(iY)})
nh=sqrt(n);
figure(1)
subplot(1,3,1)
imshow(reshape(Y,nh,nh))
