\name{RcppArmadillo-Functions}
\alias{cbindARMA}
\title{Binds two matrices together into a matrix}
\description{
Binds two matrices with the same number of rows together into a common matrix in a fashion similar to cbind in R
}
\usage{
cbindARMA(A, B)
}
\arguments{
  \item{A}{a numeric matrix}
  \item{B}{a numeric matrix}
 
}
\value{
  \code{cbindARMA()} returns a matrix with the same number of rows as both \code{A} and \code{B} and the number of columns of \code{A} plus the number of columns \code{B} giving a matrix, with some abuse of notation of the form \code{[A B]}. Note that there is no way to deal with missing values in this function and this requires the number of rows of \code{A} to be the same as the number of rows of \code{B} (If this isn't true, behavior of the function is not guaranteed).
}
\details{
  This function takes two matrices and binds them together into a single matrix.
}
\references{ None
}
\examples{
  A <- matrix(1:4, 2, 2)
  B <- matrix(5:8, 2, 2)
  
  cbindARMA(A, B)
  
##       [,1] [,2] [,3] [,4]
##  [1,]    1    3    5    7
##  [2,]    2    4    6    8
}
\author{John Tipton}

