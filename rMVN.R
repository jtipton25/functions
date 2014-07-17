rMVN <- function(A.chol, b){ #cholesky of A, b for normal mean A^( - 1) * b and variance A^( - 1)
  n <- length(b)
  devs <- rnorm(n)
  return(backsolve(A.chol, backsolve(A.chol, b, transpose = TRUE) + devs))
}