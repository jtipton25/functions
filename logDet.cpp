#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double logDet(mat x) {
    mat rooti = chol(x);
    return(2 * sum(log(rooti.diag())));
}
