#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]

mat makeDistARMA2(mat & coords1, mat & coords2) {
  int nrows1 = coords1.n_rows;
  int nrows2 = coords2.n_rows;
  mat D(nrows1, nrows2, fill::zeros);
  for(int i = 0; i < nrows1; i++){
    for(int j = 0; j < nrows2; j++){
      double tmp = 0;
      for(int k = 0; k < 2; k++){
      tmp = tmp + pow(coords1(i, k) - coords2(j, k), 2);
      }
      D(i, j) = sqrt(tmp);
    }
  }
  return(D);
}
