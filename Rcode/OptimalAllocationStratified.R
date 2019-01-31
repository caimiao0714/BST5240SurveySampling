####  Sample Size Using Equal Allocation
N =  c(155,62,93)        ### total within each stratum
NN = sum(N)              ### total across all stratum
S = c(5,15,10)           ### st dev within each stratum
A = c(1/3,1/3,1/3)       ### allocation across strata
e = 2                    ### desired MOE for mean

D = e^2/4

x1 = sum( (N^2)*(S^2)/A )
x2 = sum( N*(S^2) )

nn = x1 / ( NN^2 * D + x2 )


####  Sample Size Using Optimal Allocation

cost = c(9,9,16)

x1 = sum( N*S/sqrt(cost) )
x2 = sum( N*S*sqrt(cost) )
x3 = sum( N*(S^2) )
D = e^2 /4

nn = ( x1 * x2 ) / ( (NN^2)*D + x3 )

x4 = sum( N*S/sqrt(cost) )
A1 = N[1]*S[1]/sqrt(cost[1])/x4
A2 = N[2]*S[2]/sqrt(cost[2])/x4
A3 = N[3]*S[3]/sqrt(cost[3])/x4

n1 = A1*nn
n2 = A2*nn
n3 = A3*nn

