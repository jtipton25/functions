#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
vec rMVNArma(arma::mat & A, arma::vec & b) {
	int ncols = A.n_cols;
	mat A_chol = chol(A);
	vec devs = randn(ncols);
	vec temp = solve(trimatl(A_chol.t()), b);
	return vec(solve(trimatu(A_chol), temp + devs));
}

