#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

// [[Rcpp::export]]
double convertToAlpha(double & mu, double & s2){
	return(pow(mu, 2) / s2 + 2.0);
}

// [[Rcpp::export]]
double convertToBeta(double & mu, double & s2){
	return(mu * (pow(mu, 2) / s2 + 1.0));
}
