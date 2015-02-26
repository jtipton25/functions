\name{RcppArmadillo-Functions}
\alias{convertToAlpha}
\title{Moment matching of mean and variance to shape and rate parameters of inverse gamma function}
\description{
Matches the mean and varianceto shape and rate parameters of inverse gamma function
}
\usage{
convertToAlpha(mu, s2)
convertToBeta(mu, s2)
}
\arguments{
  \item{mu > 0}{a double}
  \item{s2 > 0}{a double}
 
}
\value{
  \code{convertToAlpha()} returns a double that represents the \code{shape} parameter of an inverse gamma distribution with mean \code{mu} and variance \code{s2}. \code{convertToBeta()} returns a double that represents the \code{rate} parameter of an inverse gamma distribution with mean \code{mu} and variance \code{s2}. Note this returns a \code{shape} > 2 and a \code{rate} > 0s.
}
\details{
  These functions take a mean and variance parameterization of an inverse gamma distribution and return \code{rate} and \code{shape} parameters of the inverse gamma distribution.
}
\references{ None
}
\examples{
  set.seed(101)
  mu <- 4  ## must be greater than 0
  s2 <- 2  ## must be greater than 0
  rate <- convertToAlpha(mu, s2)
  shape <- convertToBeta(mu, s2)
  
  x <- 1 / rgamma(10000, rate, shape)
  mean(x)
##  [1] 3.994432
  var(x)
##  [1] 1.978426  
}
\author{John Tipton}

