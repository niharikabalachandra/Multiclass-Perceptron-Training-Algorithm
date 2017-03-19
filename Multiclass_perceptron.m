eta=input('Enter the value of eta\n')
threshold_epsilon=input('Enter the threshold value of the ratio of misclassified input patterns \n')
n= input('Enter the number of elements of training set images and training set labels \n')
 
W = zeros(10,784);
x=zeros(784,1);
D=zeros(10,n);
d=zeros(10,1);
S = loadMNISTImages('train-images.idx3-ubyte');
label= loadMNISTLabels('train-labels.idx1-ubyte');

% Initialize Weights W € R10 x 784 randomly 
for i= 1:10
    for j=1:784
        W(i,j)= rand;
    end
end
for j=1:n
    D(label(j)+1,j)=1;
end
 
epoch=1;
loop=1;

%Multiclass Perceptron Training Algorithm 
while loop==1
    error(epoch)=0;
    %error=0;
    for k=1:n
        x=S(:,k);
        v=W*x;
        [maximum, index]=max(v);
        corres_num=index-1;
        if (label(k,:)~=corres_num)
            error(epoch)=error(epoch)+1;
            
        end
        
    end

%Weight update and Calculating the number of misclassifications
    epoch=epoch+1;
    for k=1:n
        x=S(:,k);
        v_bar=W*x;
        p=step_activation_vector(v_bar);
        %diff= D(:,k)-p'
        %prod=diff*x';
        %W=W+(eta*prod);
        W= W+ eta.*(D(:,k)-p')*x';
    end
    F=error(epoch-1);
    if F/n<= threshold_epsilon
        loop=0;
        break;
    end
end
effective_epoch=epoch-1
epoch1=[0:effective_epoch]
mismatch=[0 error]
 
plot(epoch1, mismatch,'ms-')
  xlabel('Number of Epochs','FontSize',16,'FontWeight','bold', 'FontName','Time new roman');
  ylabel('Number of misclassifications','FontSize',16,'FontWeight','bold');
  title('Number of Epochs vs Number of misclassifications (Perceptron training algorithm)','FontSize',18);
