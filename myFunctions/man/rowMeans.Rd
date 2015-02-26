\name{RcppArmadillo-Functions}
\alias{rowMeans}
\title{Calculates row means}
\description{
Calculates row means
}
\usage{
rowMeans(x)
}
\arguments{
  \item{x}{a numeric matrix}
 
}
\value{
  \code{rowMeans()} returns a vector which gives the row means of the matrix \code{x}. Note that there is no way to deal with missing values in this function.
}
\details{
  These functions take a matrix and return a vector of row means.
}
\references{ None
}
\examples{
  x <- matrix(1:4, 2, 2)
  rowMeans(x)
##       [,1]
##  [1,]    2
##  [2,]    3
}
\author{John Tipton}

