\name{RcppArmadillo-Functions}
\alias{svdARMA}
\title{C++ version of svd}
\description{
Creates a singular value decomposition
}
\usage{
svdARMA(X)
dcsvdARMA(X)
}
\arguments{
  \item{X}{a numeric matrix}
}
\value{
  \code{svdARMA()} generates a singular value decomposition of \code{X}. \code{dcsvdARMA()} generates a singular value decomposition of \code{X} using the divide and conquer algorithm.
  \item{U}{a numeric matrix of left singular vectors}
  \item{sd}{a numeric vector containing the singular values (square roots of the eigenvalues)}
  \item{V}{a numeric matrix of right singular vectors}
}
\details{
  Multivariate normal sampler for Bayesian full conditionals.
}
\references{ None
}
\examples{
  X <- matrix(1:4, 2, 2)
  Sig <- t(X) \%*\% X
  
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
}
\author{John Tipton}

