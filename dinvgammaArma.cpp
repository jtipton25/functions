#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double dinvgammaArma(double & x, double & shape, double & rate, bool & logarithm){
  double logval = shape * log(rate) - lgamma(shape) - rate / x - (shape + 1.0) * log(x);
  if(!logarithm){
    return(logval);
  } else {
    return(exp(logval));
  }
}

// [[Rcpp::export]]
vec dinvgammaArmaVec(vec & x, double & shape, double & rate, bool & logarithm){
  int n = x.n_elem;
  vec logval(n, fill::zeros);
  for(int i = 0; i < n; i++){
  	logval(i) = shape * log(rate) - lgamma(shape) - rate / x(i) - (shape + 1.0) * log(x(i));
  }
  if(!logarithm){
    return(logval);
  } else {
    return(exp(logval));
  }
}