\name{RcppArmadillo-Functions}
\alias{logDet}
\title{log determinant of covariance matrix}
\description{
Calculate the log determinant of a positive definite (covariance) matrix
}
\usage{
logDet(Sig)
}
\arguments{
  \item{Sig}{a positive definite matrix}
}
\value{
  \code{logDet()} returns a double that gives the log determinant of a positive definite matrix.
}
\details{
  Gives the log determinant of positive definite matrix.
}
\references{ None
}
\examples{
  X <- matrix(1:4, 2, 2)
  Sig <- t(X) \%*\% X
  
  logDet(Sig)
##  [1] 1.386294
}
\author{John Tipton}

