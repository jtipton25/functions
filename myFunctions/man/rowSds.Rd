\name{RcppArmadillo-Functions}
\alias{rowSds}
\title{Calculates row standard deviations}
\description{
Calculates row standard deviations
}
\usage{
rowSds(x)
}
\arguments{
  \item{x}{a numeric matrix}
 
}
\value{
  \code{rowSds()} returns a vector which gives the row standard deviations of the matrix \code{x}. Note that there is no way to deal with missing values in this function.
}
\details{
  These functions take a matrix and return a vector of row standard deviations.
}
\references{ None
}
\examples{
  x <- matrix(1:4, 2, 2)
  rowSds(x)
##         [,1]
##  [1,] 1.414214
##  [2,] 1.414214
}
\author{John Tipton}

