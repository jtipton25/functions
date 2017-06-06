to_coda <- function(out) {
  n_chains <- length(out) 
  n_samples <- ifelse(is.null(dim(out[[1]][[1]])), length(out[[1]][[1]]), dim(out[[1]][[1]])) 
  out_mcmc <- mcmc.list()
  for (i in 1:n_chains) {
    out_mat <- matrix(unlist(out[[i]]), n_samples, )
    nvar <- length(out_mat)
    var_names <- vector("character")
    for (j in 1:nvar) {
      var_name <- names(out_mat[j])
      n_vars <- ifelse(is.null(dim(out_mat[j][[1]])), 1, dim(out_mat[j][[1]])[2])
      if (n_vars == 1) {
        var_names <- c(var_names, var_name)     
      } else {
        for(k in 1:n_vars) {
          var_names <- c(var_names, paste(var_name, "[", k, "]", sep=""))
        }
      }
    }
    var_names
    attr(out_mat, "mcpar") <- var_names
    out_mcmc[[i]] <- mcmc(out_mat)
  }
  return(out_mcmc)
}

to_coda_list <- function(out_list) {
  n_samples <- ifelse(is.null(dim(out_list[[1]])), length(out_list[[1]]), dim(out_list[[1]])) 
  out_mat <- matrix(unlist(out_list), n_samples, )
  nvar <- length(out_list)
  names_list <- vector("character")
  var_name <- names(out_list)
  for (j in 1:nvar) {
    n_vars <- length(out_list[[j]]) / n_samples
    if (n_vars == 1) {
      names_list <- c(names_list, var_name[j])     
    } else {
      for(k in 1:n_vars) {
        names_list <- c(names_list, paste(var_name[j], "[", k, "]", sep=""))
      }
    }
  }
  attr(out_mat, "mcpar") <- names_list
  out_mat <- mcmc(out_mat)
  dimnames(out_mat) <- list("iteration" = NULL,
                            "parameters" = names_list)
  return(out_mat)
}

# tst=mcmc.list(lapply(1:length(out), function(x) to_coda_list(out[[x]])))

