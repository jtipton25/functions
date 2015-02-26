\name{RcppArmadillo-Functions}
\alias{makePCA}
\title{C++ version of princomp}
\description{
Calculates principal component matrix
}
\usage{
makePCA(X)
}
\arguments{
  \item{X}{a numeric matrix}
}
\value{
  \code{makePCA()} returns a matrix that gives the principal components and the standard deviations of the eigenvalues, as in princomp in R with the following components:
  
  \item{X_pca}{a numeric matrix whose columns contain the eigenvalues}
  \item{sdev}{a vector of the standard deviations of the principal components}
}
\details{
  Gives the rotated principal components and associated standard deviations of the eigenvalues of the matrix \code{X} as in princomp in R.
}
\references{ None
}
\examples{
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
}
\author{John Tipton}

