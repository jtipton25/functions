\name{RcppArmadillo-Functions}
\alias{phi}
\title{Fast approximate normal CDF}
\description{
Fast approximation of the CDF of a normal random variable
}
\usage{
phi(x)
}
\arguments{
  \item{x}{a double}
}
\value{
  \code{fastPhi()} returns a double between 0 and 1 that gives the CDF of a standard normal random variable.
}
\details{
  This function is a fast approximation of pnorm in C++ that loses accuracy in the tails.
}
\references{ None
}
\examples{
  x <- 1.64
  
  pnorm(x)
##  [1] 0.9494974
  
  phi(x)
##  [1] 0.9494974
}
\author{John Tipton}

