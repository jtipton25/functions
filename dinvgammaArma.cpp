#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]

double dinvgammaArma(double & x, double & shape, double & rate, double & logarithm){
  double logval = shape * log(rate) - lgamma(shape) - rate / x - (shape + 1) * log(x);
  if(!logarithm){
    return(logval);
  } else {
    return(exp(logval));
  }
}
