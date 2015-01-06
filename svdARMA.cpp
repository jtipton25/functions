#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]

List svdARMA(const mat & X) {
    mat U, V;
    vec S;
    svd(U, S, V, X, "standard");
    return List::create(Named("sd") = S, Named("U") = U, Named("V") = V);
}

// [[Rcpp::export]]

List dcsvdARMA(const mat & X) {
    mat U, V;
    vec S;
    svd(U, S, V, X, "dc");
    return List::create(Named("sd") = S, Named("U") = U);
}