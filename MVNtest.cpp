#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
mat mvrnormArma(const int n, const vec mu, const mat Sigma) {
   int ncols = Sigma.n_cols;
   mat Y = randn(n, ncols);
   return repmat(mu, 1, n).t() + Y * chol(Sigma);
}