library(inline)

D <- as.matrix(dist(1:10))
A <- exp(-D)
A.chol=chol(A)
tA.chol <- t(A.chol)
b <- c(1:10)/4
n <- length(b)

backsolve(A.chol, backsolve(A.chol, b, transpose = TRUE) + devs)
solve(A.chol, solve(tA.chol, b) +devs)
temp <- matrix(0, nrow = 100000, ncol = 10)
for(i in 1:100000){
	devs <- rnorm(n)
	temp[i, ] <- backsolve(A.chol, backsolve(A.chol, b, transpose = TRUE) + devs)
}

t(solve(A) %*% b)
apply(temp, 2, mean)

temp.arma <- matrix(0, nrow = 100000, ncol = 10)
for(i in 1:100000){
	temp.arma[i, ] <- rMVNArma(A, b)
}

t(solve(A) %*% b)
apply(temp.arma, 2, mean)

mvrnormArma(1, b, A)

