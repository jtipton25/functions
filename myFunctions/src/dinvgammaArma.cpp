#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double dinvgammaArma(const double & x, const double & shape, 
											const double & rate, const bool logarithm = true){
  double logval = shape * log(rate) - lgamma(shape) - rate / x - (shape + 1.0) * log(x);
  if(!logarithm){
    return(logval);
  } else {
    return(exp(logval));
  }
}

// [[Rcpp::export]]
arma::vec dinvgammaArmaVec(const arma::vec & x, const double & shape, const double & rate,
											const bool logarithm = true){
  int n = x.n_elem;
  arma::vec logval(n, fill::zeros);
  for(int i = 0; i < n; i++){
  	logval(i) = shape * log(rate) - lgamma(shape) - rate / x(i) - (shape + 1.0) * log(x(i));
  }
  if(!logarithm){
    return(logval);
  } else {
    return(exp(logval));
  }
}