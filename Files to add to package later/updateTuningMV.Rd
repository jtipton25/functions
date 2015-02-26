\name{RcppArmadillo-Functions}
\alias{updateTuningMV}
\title{Bayesian multivariate adaptive tuning}
\description{
Bayesian multivariate adaptive tuning
}
\usage{
updateTuningMV(k, p, x, mu, Sig)
}
\arguments{
  \item{k}{a double representing the mcmc iteration}
  \item{p}{a double representing the dimension of \code{x}}
  \item{x}{a numeric vector representing the current value of the parameter being adaptively sampled}
  \item{mu}{a numeric vector representing the mean of sampled parameter values}
  \item{Sig}{a numeric matrix representing the covariance of sample parameter values}
}
\value{
  \code{updateTuningMV()} updates the tuning standard deviation in an mcmc sampler to allow for adaptive tuning.
}
\details{
  Function for adaptive MCMC tuning.
}
\references{ None
}
\examples{
	k <- 50
	p <- 3
	x <- rep(2, 3)
	mu <- 1:3
	Sig <- diag(3)
  updateTuningMV(k, p, x, mu, Sig)
}
\author{John Tipton}

