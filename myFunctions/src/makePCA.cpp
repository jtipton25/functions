#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]
List makePCA(const arma::mat X){ // recreate in C++ the R function princomp
  int nrows = X.n_rows;
  arma::vec J(nrows, fill::ones);
  int ncols = X.n_cols;
  arma::mat X_center(nrows, ncols);
  for(int i = 0; i < ncols; i++){
    X_center.col(i) = X.col(i) - J * mean(X.col(i));
  }
  arma::mat U;
  arma::vec s;
  arma::mat V;
  svd_econ(U, s, V, X_center, "right", "dc");
  return(List::create(
    _["X_pca"] = X_center * V, 
    _["sdev"] = s / sqrt(nrows - 1)));
}
