#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]

// [[Rcpp::export]]
Rcpp::List svdARMA(const arma::mat & X) {
    arma::mat U, V;
    arma::vec S;
    arma::svd(U, S, V, X, "standard");
    return Rcpp::List::create(Rcpp::Named("sd") = S, Rcpp::Named("U") = U);
}

Rcpp::List dcsvdARMA(const arma::mat & X) {
    arma::mat U, V;
    arma::vec S;
    arma::svd(U, S, V, X, "dc");
    return Rcpp::List::create(Rcpp::Named("sd") = S, Rcpp::Named("U") = U);
}