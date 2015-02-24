#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;
 
//[[Rcpp::export]]
double phi(const double & x)
{
  // constants
  double a1 =  0.254829592;
  double a2 = -0.284496736;
  double a3 =  1.421413741;
  double a4 = -1.453152027;
  double a5 =  1.061405429;
  double p  =  0.3275911;
  
  // Save the sign of x
  int sign = 1;
  if (x < 0){
    sign = - 1;
  }
  double x_abs = fabs(x) / sqrt(2.0);
  
  // A&S formula 7.1.26
  double t = 1.0 / (1.0 + p * x_abs);
  double y = 1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * 
  						t * exp(-x_abs * x_abs);
  
  return 0.5 * (1.0 + sign * y);
}