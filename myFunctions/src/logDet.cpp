#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double logDet(const arma::mat Sig) {
    arma::mat rooti = chol(Sig);
    return(2 * sum(log(rooti.diag())));
}
