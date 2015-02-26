\name{RcppArmadillo-Functions}
\alias{colSums}
\title{Calculates column sums}
\description{
Calculates column sums
}
\usage{
colSums(x)
}
\arguments{
  \item{x}{a numeric matrix}
 
}
\value{
  \code{colSums()} returns a vector which gives the column sums of the matrix \code{x}. Note that there is no way to deal with missing values in this function.
}
\details{
  These functions take a matrix and return a vector of column sums.
}
\references{ None
}
\examples{
  x <- matrix(1:4, 2, 2)
  colSums(x)
##        [,1]
##  [1,]    3
##  [2,]    7
}
\author{John Tipton}

