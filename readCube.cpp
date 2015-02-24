#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]

cube readCube(const NumericVector myArray){
  NumericVector vecArray(myArray);
  IntegerVector arrayDims = vecArray.attr("dim");
  cube cubeArray(vecArray.begin(), arrayDims(0), arrayDims(1), arrayDims(2));
  return(cubeArray);
}

