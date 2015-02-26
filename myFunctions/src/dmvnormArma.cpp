#include <RcppArmadillo.h>
  
// [[Rcpp::depends("RcppArmadillo")]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

const double log2pi = std::log(2.0 * M_PI);

// [[Rcpp::export]]
double dMVNorm(const arma::vec & y, const arma::vec & mu, const arma::mat & Sig){ 
   arma::mat rooti = trans(inv(trimatu(chol(Sig))));
   double rootisum = sum(log(rooti.diag()));      
   arma::vec z = rooti * (y - mu) ;      
   double out = - 0.5 * sum(z % z) + rootisum;       
   return(out);
}

// [[Rcpp::export]]
arma::vec dmvnormArmaVec(const arma::vec & x, const arma::vec & mean, const arma::mat & Sigma,
										const bool logd = false) { 
    int n = x.n_elem;
    arma::vec out(n);
    arma::mat rooti = trans(inv(trimatu(chol(Sigma))));
    double rootisum = sum(log(rooti.diag()));
    double constants = -(n / 2.0) * log2pi;
    for (int i=0; i < n; i++) {
        arma::vec z = rooti * (x - mean);    
        out(i)      = constants - 0.5 * sum(z%z) + rootisum;     
    }  
    if (logd == false) {
        out = exp(out);
    }
    return(out);
}

