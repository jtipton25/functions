pkgname <- "myFunctions"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('myFunctions')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("cbindARMA")
### * cbindARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Binds two matrices together into a matrix
### Aliases: cbindARMA

### ** Examples

  A <- matrix(1:4, 2, 2)
  B <- matrix(5:8, 2, 2)
  
  cbindARMA(A, B)
  
##       [,1] [,2] [,3] [,4]
##  [1,]    1    3    5    7
##  [2,]    2    4    6    8



cleanEx()
nameEx("colSums")
### * colSums

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Calculates column sums
### Aliases: colSums

### ** Examples

  x <- matrix(1:4, 2, 2)
  colSums(x)
##        [,1]
##  [1,]    3
##  [2,]    7



cleanEx()
nameEx("convertIGAlpha")
### * convertIGAlpha

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Moment matching of mean and variance to shape and rate
###   parameters of inverse gamma function
### Aliases: convertToAlpha

### ** Examples

  set.seed(101)
  mu <- 4  ## must be greater than 0
  s2 <- 2  ## must be greater than 0
  rate <- convertToAlpha(mu, s2)
  shape <- convertToBeta(mu, s2)
  
  x <- 1 / rgamma(10000, rate, shape)
  mean(x)
##  [1] 3.994432
  var(x)
##  [1] 1.978426  



cleanEx()
nameEx("convertIGBeta")
### * convertIGBeta

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Moment matching of mean and variance to shape and rate
###   parameters of inverse gamma function
### Aliases: convertToBeta

### ** Examples

  set.seed(101)
  mu <- 4  ## must be greater than 0
  s2 <- 2  ## must be greater than 0
  rate <- convertToAlpha(mu, s2)
  shape <- convertToBeta(mu, s2)
  
  x <- 1 / rgamma(10000, rate, shape)
  mean(x)
##  [1] 3.994432
  var(x)
##  [1] 1.978426  



cleanEx()
nameEx("dMVNorm")
### * dMVNorm

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Multivariate normal density evaluation <- Not sure why I have
###   dmvnormArmaVec
### Aliases: dMVNorm

### ** Examples

  mu <- 3:4
  Sig <- matrix(c(1, 0.5, 0.5, 1), 2, 2)
  x <- 4:5
  
  dMVNorm(x, mu, Sig)
##  [1] -2.360703
	
  dmvnormArmaVec(x, t(mu), Sig)
##            [,1]
##  [1,] -2.360703
##  [2,] -2.360703




cleanEx()
nameEx("dcsvdARMA")
### * dcsvdARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of svd
### Aliases: dcsvdARMA

### ** Examples

  X <- matrix(1:4, 2, 2)
  Sig <- t(X) %*% X
  
  svdARMA(Sig)
##  $sd
##             [,1]
##  [1,] 29.8660687
##  [2,]  0.1339313
##  
##  $U
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536
##  
##  $V
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536

  dcsvdARMA(Sig)
##  $sd
##             [,1]
##  [1,] 29.8660687
##  [2,]  0.1339313
##  
##  $U
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536



cleanEx()
nameEx("dinvgammaArma")
### * dinvgammaArma

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Density of inverse gamma distribution
### Aliases: dinvgammaArma

### ** Examples

  x <- 0.5
  y <- 1:4
  rate <- 1
  shape <- 1
  dinvgammaArma(x, 1, 1) ## returns log density
  dinvgammaArmaVec(y, 1, 1) ## returns vector of log densities



cleanEx()
nameEx("dinvgammaArmaVec")
### * dinvgammaArmaVec

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Density of inverse gamma distribution
### Aliases: dinvgammaArmaVec

### ** Examples

  x <- 0.5
  y <- 1:4
  rate <- 1
  shape <- 1
  dinvgammaArma(x, 1, 1) ## returns log density
  dinvgammaArmaVec(y, 1, 1) ## returns vector of log densities



cleanEx()
nameEx("dmvnormARMAVec")
### * dmvnormARMAVec

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Multivariate normal density evaluation <- Not sure why I have
###   dmvnormArmaVec??
### Aliases: dmvnormArmaVec

### ** Examples

  mu <- 3:4
  Sig <- matrix(c(1, 0.5, 0.5, 1), 2, 2)
  x <- 4:5
  
  dMVNorm(x, mu, Sig)
##  [1] -2.360703
	
  dmvnormArmaVec(x, t(mu), Sig)
##            [,1]
##  [1,] -2.360703
##  [2,] -2.360703




cleanEx()
nameEx("fastPhi")
### * fastPhi

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Fast approximate normal CDF
### Aliases: phi

### ** Examples

  x <- 1.64
  
  pnorm(x)
##  [1] 0.9494974
  
  phi(x)
##  [1] 0.9494974



cleanEx()
nameEx("logDet")
### * logDet

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: log determinant of covariance matrix
### Aliases: logDet

### ** Examples

  X <- matrix(1:4, 2, 2)
  Sig <- t(X) %*% X
  
  logDet(Sig)
##  [1] 1.386294



cleanEx()
nameEx("makeDistanceARMA")
### * makeDistanceARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Calculates Euclidean distance between two sets of coordinates
### Aliases: makeDistARMA

### ** Examples

  coords1 <- matrix(1:8, 4, 2)
  coords2 <- matrix(11:18, 4, 2)
  
  makeDistARMA(coords1, coords2)
##           [,1]     [,2]     [,3]     [,4]
##  [1,] 0.000000 1.414214 2.828427 4.242641
##  [2,] 1.414214 0.000000 1.414214 2.828427
##  [3,] 2.828427 1.414214 0.000000 1.414214
##  [4,] 4.242641 2.828427 1.414214 0.000000



cleanEx()
nameEx("makePCA")
### * makePCA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of princomp
### Aliases: makePCA

### ** Examples

  X <- matrix(1:8, 4, 2)
  
  makePCA(X)
##  $X_pca
##             [,1] [,2]
##  [1,] -2.1213203    0
##  [2,] -0.7071068    0
##  [3,]  0.7071068    0
##  [4,]  2.1213203    0
##
##  $sdev
##           [,1]
##  [1,] 1.825742
##  [2,] 0.000000



cleanEx()
nameEx("mvrnormARMA")
### * mvrnormARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of mvrnorm
### Aliases: mvrnormArma

### ** Examples

  mu <- 1:4
  Sigma <- diag(4)
  
  mvrnormArma(4, mu, Sigma)
##              [,1]     [,2]     [,3]     [,4]
##  [1,]  1.32247945 2.537651 1.472034 4.268270
##  [2,]  0.07755503 1.530883 2.845135 3.698179
##  [3,] -0.56829123 1.395040 4.632903 5.262550
##  [4,]  0.17389172 2.670689 3.337295 1.686998

  mvrnormArmaVec(mu, Sigma)
##            [,1]
##  [1,] -1.571272
##  [2,]  3.124006
##  [3,]  5.760263
##  [4,]  6.286767



cleanEx()
nameEx("mvrnormARMAVec")
### * mvrnormARMAVec

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of mvrnorm
### Aliases: mvrnormArmaVec

### ** Examples

  mu <- 1:4
  Sigma <- diag(4)
  
  mvrnormArma(4, mu, Sigma)
##              [,1]     [,2]     [,3]     [,4]
##  [1,]  1.32247945 2.537651 1.472034 4.268270
##  [2,]  0.07755503 1.530883 2.845135 3.698179
##  [3,] -0.56829123 1.395040 4.632903 5.262550
##  [4,]  0.17389172 2.670689 3.337295 1.686998

  mvrnormArmaVec(mu, Sigma)
##            [,1]
##  [1,] -1.571272
##  [2,]  3.124006
##  [3,]  5.760263
##  [4,]  6.286767



cleanEx()
nameEx("myFunctions-package")
### * myFunctions-package

flush(stderr()); flush(stdout())

### Name: myFunctions-package
### Title: A set of commonly used R and C++ functions
### Aliases: myFunctions-package myFunctions
### Keywords: package

### ** Examples

~~ Examples ~~



cleanEx()
nameEx("orderArma")
### * orderArma

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of order
### Aliases: orderArma

### ** Examples

  x <- c(4,7,3,5,9,2)
  
  orderArma(x)
##  [1] 6 3 1 4 2 5

  x[orderArma(x)]
##  [1] 2 3 4 5 7 9



cleanEx()
nameEx("rMVNArma")
### * rMVNArma

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of order
### Aliases: rMVNArma

### ** Examples

  set.seed(101)
  x <- 1:4
  A <- diag(4)
  a <- 2
  b <- 1
  
  rMVNArma(A, x)
##            [,1]
##  [1,] 0.8746786
##  [2,] 1.5526778
##  [3,] 4.2836179
##  [4,] 4.9653297

  rMVNArmaScalar(a, b)
##  [1] 0.02274263



cleanEx()
nameEx("rMVNArmaScalar")
### * rMVNArmaScalar

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of order
### Aliases: rMVNArmaScalar

### ** Examples

  set.seed(101)
  x <- 1:4
  A <- diag(4)
  a <- 2
  b <- 1
  
  rMVNArma(A, x)
##            [,1]
##  [1,] 0.8746786
##  [2,] 1.5526778
##  [3,] 4.2836179
##  [4,] 4.9653297

  rMVNArmaScalar(a, b)
##  [1] 0.02274263



cleanEx()
nameEx("rbindARMA")
### * rbindARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Stacks two matrices together into a matrix
### Aliases: rbindARMA

### ** Examples

  X <- matrix(1:4, 2, 2)
  Y <- matrix(5:8, 2, 2)
  
  rbindARMA(X, Y)
##       [,1] [,2]
##  [1,]    1    3
##  [2,]    2    4
##  [3,]    5    7
##  [4,]    6    8



cleanEx()
nameEx("rowMeans")
### * rowMeans

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Calculates row means
### Aliases: rowMeans

### ** Examples

  x <- matrix(1:4, 2, 2)
  rowMeans(x)
##       [,1]
##  [1,]    2
##  [2,]    3



cleanEx()
nameEx("rowSds")
### * rowSds

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Calculates row standard deviations
### Aliases: rowSds

### ** Examples

  x <- matrix(1:4, 2, 2)
  rowSds(x)
##         [,1]
##  [1,] 1.414214
##  [2,] 1.414214



cleanEx()
nameEx("rowSums")
### * rowSums

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: Calculates row sums
### Aliases: rowSums

### ** Examples

  X <- matrix(1:4, 2, 2)
  
  rowSums(X)
##       [,1]
##  [1,]    4
##  [2,]    6



cleanEx()
nameEx("svdARMA")
### * svdARMA

flush(stderr()); flush(stdout())

### Name: RcppArmadillo-Functions
### Title: C++ version of svd
### Aliases: svdARMA

### ** Examples

  X <- matrix(1:4, 2, 2)
  Sig <- t(X) %*% X
  
  svdARMA(Sig)
##  $sd
##             [,1]
##  [1,] 29.8660687
##  [2,]  0.1339313
##  
##  $U
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536
##  
##  $V
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536

  dcsvdARMA(Sig)
##  $sd
##             [,1]
##  [1,] 29.8660687
##  [2,]  0.1339313
##  
##  $U
##             [,1]       [,2]
##  [1,] -0.4045536 -0.9145143
##  [2,] -0.9145143  0.4045536



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
