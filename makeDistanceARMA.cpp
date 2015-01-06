#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]

mat makeDistARMA(mat & locs) {
  int nrows = locs.n_rows;
  mat D(nrows, nrows, fill::zeros);
  for(int i = 0; i < nrows; i++){
    for(int j = 0; j < nrows; j++){
      double tmp = 0;
      for(int k = 0; k < 2; k++){
      tmp = tmp + pow(locs(i, k) - locs(j, k), 2);
      }
      D(i, j) = sqrt(tmp);
    }
  }
  return(D);
}
