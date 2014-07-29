#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

// Below is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar)

// [[Rcpp::export]]
arma::mat rMVNArma(arma::mat A, arma::vec b) {
	int ncols = A.n_cols;
	arma::mat A_chol = arma::chol(A);
	arma::vec devs = arma::randn(ncols);
	arma::vec temp = solve(trimatl(A_chol.t()), b);
	return arma::vec(solve(trimatu(A_chol), temp + devs));
}

