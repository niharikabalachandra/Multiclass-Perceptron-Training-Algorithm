## Multiclass-Perceptron-Training-Algorithm
Multiclass Perceptron Training Algorithm used for digit recognition

# Dataset Used:
MNIST data found at http://yann.lecun.com/exdb/mnist/
The training dataset comprises of the pixel information of 60000, 28 x 28 images, each stored as the columns of a matrix of size 60000 x 784. The test dataset comprises of 10000, 28 x 28 images, each stored as the columns of a matrix of size 10000 x 784. We also have two other files we consider consisting of the training (60000 x 1) and test labels (10000 x 1).

# Network Architecture 
The Multiclass Perceptron Training Algorithm is used for digit recognition. The inputs to the model are the 784 pixels of each training image of size 28 x 28. The output is a one hot encoded matrix of size 10 x 1, where [1 0 0 0 0 0 0 0 0 0 0] corresponds to 0, [0 1 0 0 0 0 0 0 0 0 0] corresponds to 1 and so on. 

![Alt text](https://github.com/niharikabalachandra/Multiclass-Perceptron-Training-Algorithm/blob/master/neural%20network.jpg?raw=true "PTA-Network-Architechture")

The output of the system is then compared to the data label and based on where we have a match or not, we calculate the number of misclassifications per epoch.
![Alt text](https://github.com/niharikabalachandra/Multiclass-Perceptron-Training-Algorithm/blob/master/multiclass%20perceptron.png?raw=true "Multiclass-Perceptron-Training-Algorithm")

