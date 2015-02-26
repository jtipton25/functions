#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]

List svdARMA(const arma::mat & X) {
    arma::mat U, V;
    arma::vec S;
    svd(U, S, V, X, "standard");
    return List::create(Named("sd") = S, Named("U") = U, Named("V") = V);
}

// [[Rcpp::export]]

List dcsvdARMA(const arma::mat & X) {
    arma::mat U, V;
    arma::vec S;
    svd(U, S, V, X, "dc");
    return List::create(Named("sd") = S, Named("U") = U);
}