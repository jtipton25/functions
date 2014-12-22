#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]

IntegerVector order_(NumericVector x) {
  if (is_true(any(duplicated(x)))) {
    Rf_warning("There are duplicates in 'x'; order not guaranteed to match that of R's base::order");
  }
  NumericVector sorted = clone(x).sort();
  return match(sorted, x);
}