#Assignment
#Q1
A <- matrix(c(5,4,-2,4,5,0,2,4,4),3,3, byrow = TRUE)
A

B <- matrix(c(6,7,-2,8,9,7,4,4,2),3,3, byrow = TRUE)
B

C <- matrix(c(4,6,10,0,3,5,2,7,9),3,3, byrow = TRUE)
C

#AB
D <- A %*% B 
D
#B+C
E <- B+C
E
#C inverse
CI <- solve(C)
C %*% CI
CI %*% C        
#Det (C)
dC <- det(C)
dC
#Trace (C)
TransC<- t(C)
TransC
sum (diag(C))
#Eigen values and vector of C
e <- eigen(C)
e
F = e$values
G = e$vectors
#Is C positive definite?
t_vectors_c = t(G)
diagonal_values_c = diag(F)
diagonal_values_c
#new determinent
O = G%*%diagonal_values_c%*%t_vectors_c
O
DO = det(O)
DO
#the determent of the matrix is negative so, the C matrix is not a positive definite matrix

#Check the linear dependency in A.
#install.packages("plm")
#library(plm)
detect.lindep(A)

#______________________________________________

#Q2 Using the data in the slides:
#install.packages("MVN")
#library(MVN)

my_data_matrix = matrix(c(69,74,68,70,72,67,66,70,76,68,72,79,74,67,66,71,74,75,75,76,153,175,155,135,172,150,115,137,200,130,140,265,185,
                          112,140,150,165,185,210,220),20,2,byrow = FALSE)

colnames(my_data_matrix) <- c("Height=x" , "Weight=y")
my_data_matrix
#Test the multivariate Normal assumption
#to test normality in R i use Mardia's MVN test

mvn(my_data_matrix, mvnTest = "mardia")

#Draw the data (3D and contours)

the_mvn_plot <- as.data.frame(my_data_matrix)
mvn(the_mvn_plot ,mvnTest = "dh", multivariatePlot = "persp")  #i used Doornik-Hansen’s MVN test

# to draw contour plot

mvn(the_mvn_plot, mvnTest = "dh", multivariatePlot = "contour")  #i used Doornik-Hansen’s MVN test

#Find the variance covariance matrix and get its Eigen values
#to get the covariance

N = cov(my_data_matrix)
N

#to get the Eigen Values and vectors

the_eigen_values<- eigen(N)
the_eigen_values

