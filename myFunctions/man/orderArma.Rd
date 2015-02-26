\name{RcppArmadillo-Functions}
\alias{orderArma}
\title{C++ version of order}
\description{
Creates an order index as in order in R
}
\usage{
orderArma(x)
}
\arguments{
  \item{x}{a numeric vector}
}
\value{
  \code{orderArma()} returns a permutation index as in order in R.
}
\details{
  Values are sorted in descending order.
}
\references{ None
}
\examples{
  x <- c(4,7,3,5,9,2)
  
  orderArma(x)
##  [1] 6 3 1 4 2 5

  x[orderArma(x)]
##  [1] 2 3 4 5 7 9
}
\author{John Tipton}

