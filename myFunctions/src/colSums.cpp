#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
arma::vec colSums(const arma::mat & X){
   int nCols = X.n_cols;
   arma::vec out(nCols);
   for(int i = 0; i < nCols; i++){
      out(i) = sum(X.col(i));
   }
   return(out);
}

