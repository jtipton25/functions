\name{RcppArmadillo-Functions}
\alias{updateTuningVec}
\title{C++ version of svd}
\description{
Creates a singular value decomposition
}
\usage{
updateTuning(k, accept_tmp, tune)
updateTuningVec(k, accept_tmp_vec, tune_vec)
}
\arguments{
  \item{k}{a double representing the mcmc iteration}
  \item{accept_tmp}{a double representing the 50 iteration acceptance rate}
  \item{tune}{a double representing the current tuning standard deviation}
  \item{accept_tmp_vec}{a numeric vector representing the 50 iteration acceptance rate}
  \item{tune_vec}{a numeric vector representing the current tuning standard deviation}
}
\value{
  \code{updateTuning()} updates the tuning standard deviation in an mcmc sampler to allow for adaptive tuning.
}
\details{
  Function for adaptive MCMC tuning.
}
\references{ None
}
\examples{
	k <- 50
	accept <- 0.5
	tune <- 1
  updateTuning(k, accept, tune)
}
\author{John Tipton}

