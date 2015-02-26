\name{RcppArmadillo-Functions}
\alias{rowSums}
\title{Calculates row sums}
\description{
Calculates row sums
}
\usage{
rowSums(X)
}
\arguments{
  \item{X}{a numeric matrix}
 
}
\value{
  \code{rowSums()} returns a vector which gives the row sums of the matrix \code{X}. Note that there is no way to deal with missing values in this function.
}
\details{
  This function takes a matrix and returns a vector of row sums.
}
\references{ None
}
\examples{
  X <- matrix(1:4, 2, 2)
  
  rowSums(X)
##       [,1]
##  [1,]    4
##  [2,]    6
}
\author{John Tipton}

