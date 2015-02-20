#include <RcppArmadillo.h>
  
// [[Rcpp::depends("RcppArmadillo")]]

using namespace Rcpp;
using namespace arma;

const double log2pi = std::log(2.0 * M_PI);

// [[Rcpp::export]]
double dMVNorm(vec & y, vec & mu, mat & Sig){ 
   mat rooti = trans(inv(trimatu(chol(Sig))));
   double rootisum = sum(log(rooti.diag()));      
   vec z = rooti * (y - mu) ;      
   double out = - 0.5 * sum(z % z) + rootisum;       
   return(out);
}

// [[Rcpp::export]]
vec dmvnormArmaVec(vec & x, rowvec & mean, mat & sigma, bool logd = false) { 
    int n = x.n_elem;
    vec out(n);
    mat rooti = trans(inv(trimatu(chol(sigma))));
    double rootisum = sum(log(rooti.diag()));
    double constants = -(n / 2.0) * log2pi;
    for (int i=0; i < n; i++) {
        vec z = rooti * trans(x - mean) ;    
        out(i)      = constants - 0.5 * sum(z%z) + rootisum;     
    }  
    if (logd == false) {
        out = exp(out);
    }
    return(out);
}

