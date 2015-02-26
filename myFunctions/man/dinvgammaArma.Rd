\name{RcppArmadillo-Functions}
\alias{dinvgammaArma}
\title{Density of inverse gamma distribution}
\description{
Density of inverse gamma distribution
}
\usage{
dinvgammaArma(x, shape, rate, logarithm = true)
dinvgammaArmaVec(y, shape, rate, logarithm = true)
}
\arguments{
  \item{x}{a double}
  \item{y}{a numeric vector}
  \item{shape}{a double}
  \item{rate}{a double}
  \item{logarithm}{a boolean}
 
}
\value{
  \code{dinvgammaArma()} returns a double which is the log density of an inverse gamma distribtiuon.

  \code{dinvgammaArmaVec()} returns a numeric vector where each element of the vector is the log density of an inverse gamma distribtuion.
}
\details{
  These functions take a double or vector and return a log inverse gamma density evaluation using the parameterization
  
\deqn{\frac{rate^{shape}} {\gamma(shape) * x^{shape + 1}} exp( - rate / x)}.

}
\references{ See wikipedia...
}
\examples{
  x <- 0.5
  y <- 1:4
  rate <- 1
  shape <- 1
  dinvgammaArma(x, 1, 1) ## returns log density
  dinvgammaArmaVec(y, 1, 1) ## returns vector of log densities
}
\author{John Tipton}

