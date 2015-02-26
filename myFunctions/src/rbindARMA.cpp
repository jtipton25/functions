#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;
 
//[[Rcpp::export]]
arma::mat rbindARMA(const arma::mat & A, const arma::mat & B){
  int ncols = A.n_cols;    
  int nrowsA = A.n_rows;
  int nrowsB = B.n_rows;
  arma::mat out(nrowsA + nrowsB, ncols);
  for(int i = 0; i < nrowsA + nrowsB; i++){
    if(i < nrowsA){
      out.row(i) = A.row(i);
    } else {
      out.row(i) = B.row(i - nrowsA);
    }
  }
  return(out);
}