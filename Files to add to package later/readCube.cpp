#include <RcppArmadillo.h>

// [[Rcpp::depends(RcppArmadillo)]]
// [[Rcpp::interfaces(r, cpp)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]

arma::cube readCube(const NumericVector myArray){
  NumericVector vecArray(myArray);
  IntegerVector arrayDims = vecArray.attr("dim");
  arma::cube cubeArray(vecArray.begin(), arrayDims(0), arrayDims(1), arrayDims(2));
  return(cubeArray);
}

