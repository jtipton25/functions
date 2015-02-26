\name{RcppArmadillo-Functions}
\alias{makeDistARMA}
\title{Calculates Euclidean distance between two sets of coordinates}
\description{
Calculates Euclidean distance between two sets of coordinates
}
\usage{
makeDistARMA(coords1, coords)
}
\arguments{
  \item{coords1}{a numeric matrix with two columns}
  \item{coords2}{a numeric matrix with two columns}
}
\value{
  \code{makeDistARMA()} returns a matrix that gives the distances between \code{coords1} and \code{coords2}.
}
\details{
  Gives the distance matrix between \code{coords1} and \code{coords2}.
}
\references{ None
}
\examples{
  coords1 <- matrix(1:8, 4, 2)
  coords2 <- matrix(11:18, 4, 2)
  
  makeDistARMA(coords1, coords2)
##           [,1]     [,2]     [,3]     [,4]
##  [1,] 0.000000 1.414214 2.828427 4.242641
##  [2,] 1.414214 0.000000 1.414214 2.828427
##  [3,] 2.828427 1.414214 0.000000 1.414214
##  [4,] 4.242641 2.828427 1.414214 0.000000
}
\author{John Tipton}

