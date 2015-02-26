\name{RcppArmadillo-Functions}
\alias{rMVNArma}
\title{C++ version of order}
\description{
Creates an order index as in order in R
}
\usage{
rMVNArma(A, x)
rMVNArmaScalar(a, b)
}
\arguments{
  \item{A}{a positive definite precision matrix A}
  \item{x}{a numeric vector}
  \item{a}{a double}
  \item{b}{a double}
}
\value{
  \code{rMVNArma()} generates samples from a multivariate normal distribution with mean \code{A^{-1} \%*\% x} and covariance matrix \code{A^{-1}}. \code{rMVNArmaScalar()} generates samples from a multivariate normal distribution with mean% \code{\frac{b}{a}} and variance% \code{\frac{1}{a}}.
}
\details{
  Multivariate normal sampler for Bayesian full conditionals.
}
\references{ None
}
\examples{
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
}
\author{John Tipton}

