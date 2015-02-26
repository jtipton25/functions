\name{RcppArmadillo-Functions}
\alias{mvrnormArmaVec}
\title{C++ version of mvrnorm}
\description{
Simulates a multivariate normal random variable
}
\usage{
mvrnormArma(n, mu, Sigma)
mvrnormArmaVec(mu, Sigma)
}
\arguments{
  \item{n}{an integer, the number of samples}
  \item{mu}{a numeric mean vector}
  \item{Sigma}{a positive definite covariance matrix}
}
\value{
  \code{mvrnormArma()} returns a matrix that gives a sample from a multivariate normal random variable with mean \code{mu} and covariance \code{Sigma} in each row. {mvrnormArmaVec()} returns a vector that is a single sample from a multivariate normal random variable with mean \code{mu} and covariance \code{Sigma} in each column.
}
\details{
  Gives draws from a multivariate normal random variable.
}
\references{ None
}
\examples{
  mu <- 1:4
  Sigma <- diag(4)
  
  mvrnormArma(4, mu, Sigma)
##              [,1]     [,2]     [,3]     [,4]
##  [1,]  1.32247945 2.537651 1.472034 4.268270
##  [2,]  0.07755503 1.530883 2.845135 3.698179
##  [3,] -0.56829123 1.395040 4.632903 5.262550
##  [4,]  0.17389172 2.670689 3.337295 1.686998

  mvrnormArmaVec(mu, Sigma)
##            [,1]
##  [1,] -1.571272
##  [2,]  3.124006
##  [3,]  5.760263
##  [4,]  6.286767
}
\author{John Tipton}

