#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]
arma::mat cbindARMA(const arma::mat & A, const arma::mat & B){
	int nrows = A.n_rows;		
	int ncolsA = A.n_cols;
	int ncolsB = B.n_cols;
	arma::mat out(nrows, ncolsA + ncolsB);
	for(int i = 0; i < ncolsA + ncolsB; i++){
		if(i < ncolsA){
			out.col(i) = A.col(i);
		} else {
			out.col(i) = B.col(i - ncolsA);
		}
	}
	return(out);
}