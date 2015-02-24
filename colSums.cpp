#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
vec colSums(const mat & X){
   int nCols = X.n_cols;
   vec out(nCols);
   for(int i = 0; i < nCols; i++){
      out(i) = sum(X.col(i));
   }
   return(out);
}

