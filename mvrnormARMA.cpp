#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
mat mvrnormArma(int n, vec mu, mat sigma) {
   int ncols = sigma.n_cols;
   mat Y = randn(n, ncols);
   return repmat(mu, 1, n).t() + Y * chol(sigma);
}