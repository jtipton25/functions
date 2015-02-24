#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
vec rMVNArma(const mat & A, const vec & b) {
	int ncols = A.n_cols;
	mat A_chol = chol(A);
	vec devs = randn(ncols);
	vec temp = solve(trimatl(A_chol.t()), b);
	return vec(solve(trimatu(A_chol), temp + devs));
}

//[[Rcpp::export]]
double rMVNArmaScalar(const double & a, const double & b) {
  double a_inv = 1.0 / a;
  double z = R::rnorm(0, 1);
  return(b * a_inv + z * sqrt(a_inv));
}
