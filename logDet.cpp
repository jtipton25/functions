#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double logDet(const mat Sig) {
    mat rooti = chol(Sig);
    return(2 * sum(log(rooti.diag())));
}
