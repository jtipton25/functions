#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
 arma::vec rMVNArma(const arma::mat & A, const arma::vec & b) {
	int ncols = A.n_cols;
	arma::mat A_chol = chol(A);
	arma::vec devs = randn(ncols);
	arma::vec temp = solve(trimatl(A_chol.t()), b);
	return arma::vec(solve(trimatu(A_chol), temp + devs));
}

//[[Rcpp::export]]
double rMVNArmaScalar(const double & a, const double & b) {
  double a_inv = 1.0 / a;
  double z = R::rnorm(0, 1);
  return(b * a_inv + z * sqrt(a_inv));
}
