#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]
mat cbindARMA(mat & A, mat & B){
	int nrows = A.n_rows;		
	int ncolsA = A.n_cols;
	int ncolsB = B.n_cols;
	mat out(nrows, ncolsA + ncolsB);
	for(int i = 0; i < ncolsA + ncolsB; i++){
		if(i < ncolsA){
			out.col(i) = A.col(i);
		} else {
			out.col(i) = B.col(i - ncolsA);
		}
	}
	return(out);
}