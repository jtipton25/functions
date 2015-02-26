\name{RcppArmadillo-Functions}
\alias{readCube}
\title{Reads a 3D array from R into C++ as a cube}
\description{
Reads a 3D array from R into C++ as a cube
}
\usage{
readCube(X)
}
\arguments{
  \item{X}{a 3D numeric array}
}
\value{
  \code{readCube()} converts a 3D R array into a C++ Armadillo cube. Note that there is no way to deal with missing values in this function and this requires the dimension of \code{X} to be 3 (If this isn't true, behavior of the function is not guaranteed).
}
\details{
  This function converts a 3D R array into a C++ Armadillo cube.
}
\references{ None
}
\examples{
  X <- array(1:8, c(2, 2, 4))
  
  readCube(X)
##  , , 1
##  
##       [,1] [,2]
##  [1,]    1    3
##  [2,]    2    4
##  
##  , , 2
##  
##       [,1] [,2]
##  [1,]    5    7
##  [2,]    6    8
##  
##  , , 3
##  
##       [,1] [,2]
##  [1,]    1    3
##  [2,]    2    4
##  
##  , , 4
##  
##       [,1] [,2]
##  [1,]    5    7
##  [2,]    6    8
}
\author{John Tipton}

