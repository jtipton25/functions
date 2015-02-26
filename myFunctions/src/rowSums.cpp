#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
arma::vec rowSums(const arma::mat & X){
   int nRows = X.n_rows;
   arma::vec out(nRows);
   for(int i = 0; i < nRows; i++){
      out(i) = sum(X.row(i));
   }
   return(out);
}

