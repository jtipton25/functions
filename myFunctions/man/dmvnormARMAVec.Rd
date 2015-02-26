\name{RcppArmadillo-Functions}
\alias{dmvnormArmaVec}
\title{Multivariate normal density evaluation <- Not sure why I have dmvnormArmaVec??}
\description{
Matches the mean and varianceto shape and rate parameters of inverse gamma function
}
\usage{
dMVNorm(x, mu, Sig)
dmvnormArmaVec(x, mu, Sig, logd = FALSE)
}
\arguments{
  \item{x}{a numeric vector}
  \item{mu}{a numeric vector}
  \item{Sig}{a numeric matrix}
  \item{logd}{a boolean, if \code{TRUE} returns the log density}
 
}
\value{
  \code{dMVNorm()} returns a double that represents the log denisty of a multivariate random normal variable. \code{dmvnormArmaVec()} returns a numeric vector that the log denisty of a multivariate random normal variable.
}
\details{
  These functions take a vector realization \code{x} from a random multivariate normal variable with mean vector \code{mu} and covariance matrix \code{Sig} and returns the log density of that random variable.
}
\references{ Wikipedia...
}
\examples{
  mu <- 3:4
  Sig <- matrix(c(1, 0.5, 0.5, 1), 2, 2)
  x <- 4:5
  
  dMVNorm(x, mu, Sig)
##  [1] -2.360703
	
  dmvnormArmaVec(x, t(mu), Sig)
##            [,1]
##  [1,] -2.360703
##  [2,] -2.360703

}
\author{John Tipton}

