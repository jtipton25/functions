#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// work on making this change the values outside the function

// [[Rcpp::export]]
void updateTuning(const int k, double& accept_tmp, double& tune){
  double delta = 1.0 / sqrt(k);
  if(accept_tmp > 0.44){
    tune = exp(log(tune) + delta);
  } else {
    tune = exp(log(tune) - delta);
  }
  accept_tmp = 0;
}

// [[Rcpp::export]]
void updateTuningVec(const int k, vec& accept_tmp, vec& tune){
  double delta = 1.0 / sqrt(k);
  int n = tune.n_elem;
  for(int i = 0; i < n; i++){
    if(accept_tmp(i) > 0.44){
      tune(i) = exp(log(tune(i)) + delta);
    } else {
      tune(i) = exp(log(tune(i)) - delta);
    }
    accept_tmp(i) = 0;
  }
}

// [[Rcpp::export]]
void updateTuningMV(const int& k, const int& p, const vec& x, vec& mu,
                    mat& Sig){
  double delta = 1.0 / (k + 1.0);
  vec tmp = (x - mu);
  mu += delta * tmp;
  // Do I use updated mu here or previous mu???
//  tmp = (x - mu);
  Sig += delta * (tmp * tmp.t() - Sig);
}