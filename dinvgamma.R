dinvgamma = function(x, shape = 1, rate = 1, scale = 1/rate, log = FALSE) {
  # return( rate^shape / gamma(shape) * exp( - rate / x) * x^( - shape - 1))
  logval = shape * log(rate) - lgamma(shape) - rate / x - (shape + 1) * log(x)
  if (log)
    return(logval)
  else
    return(exp(logval))
}