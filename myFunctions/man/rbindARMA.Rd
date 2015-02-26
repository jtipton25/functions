\name{RcppArmadillo-Functions}
\alias{rbindARMA}
\title{Stacks two matrices together into a matrix}
\description{
Stacks two matrices with the same number of columns together into a common matrix in a fashion similar to rbind in R
}
\usage{
rbindARMA(X, Y)
}
\arguments{
  \item{X}{a numeric matrix}
  \item{Y}{a numeric matrix}
 
}
\value{
  \code{rbindARMA()} returns a matrix with the same number of columns as both \code{X} and \code{Y} and the number of rows of \code{X} plus the number of rows \code{Y} giving a matrix, with some abuse of notation of the form %\code{[\stackrel{X} {Y}]}. 
  Note that there is no way to deal with missing values in this function and this requires the number of columns of \code{X} to be the same as the number of columns of \code{Y} (If this isn't true, behavior of the function is not guaranteed).
}
\details{
  This function takes two matrices and return a stacked matrix.
}
\references{ None
}
\examples{
  X <- matrix(1:4, 2, 2)
  Y <- matrix(5:8, 2, 2)
  
  rbindARMA(X, Y)
##       [,1] [,2]
##  [1,]    1    3
##  [2,]    2    4
##  [3,]    5    7
##  [4,]    6    8
}
\author{John Tipton}

