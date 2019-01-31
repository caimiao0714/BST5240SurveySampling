N = c(9100,1950,5500,10850,2100,5500,9000)
NN = sum(N)
n = c(636,451,481,611,493,575,588)
nn = sum(n)
x = c(242,122,87,116,177,75,153)
p = x/n

x = c(38,27,18,19,36,13,26)
xx = sum(x)

phat = x/n
phatStr = sum( N*phat ) / NN
FPC = 1 - n/N

VphatStr = sum( FPC * (N/NN)^2 * phat*(1-phat)/(n-1) )
MOE = 2*sqrt(VphatStr)
LCL = phat - MOE
UCL = phat + MOE