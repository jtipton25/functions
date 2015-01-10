#include <RcppArmadillo.h>
//
// MCMC spatial model
//
// John Tipton
//
// Created 1.6.2015
// Last updated 1.6.2015


// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;
using namespace arma;

//[[Rcpp::export]]

cube readCube(NumericVector myArray){
  NumericVector vecArray(myArray);
  IntegerVector arrayDims = vecArray.attr("dim");
  cube cubeArray(vecArray.begin(), arrayDims(0), arrayDims(1), arrayDims(2));
  
  return(cubeArray);
}

