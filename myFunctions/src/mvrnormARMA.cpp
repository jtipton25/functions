#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
arma::mat mvrnormArma(const int & n, const arma::vec & mu, const arma::mat & Sigma) {
   int ncols = Sigma.n_cols;
   arma::mat Z = randn(n, ncols);
   return repmat(mu, 1, n).t() + Z * chol(Sigma);
}

// [[Rcpp::export]]
arma::vec mvrnormArmaVec(const arma::vec & mu, const arma::mat & Sigma) {
   int ncols = Sigma.n_cols;
   arma::vec z = randn(ncols);
   return mu + chol(Sigma) * z;
}