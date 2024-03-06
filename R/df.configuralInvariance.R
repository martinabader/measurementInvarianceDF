#' Degrees of Freedom of Configural Invariance Model
#'
#' Calculates the degrees of freedom of a model assuming configural measurement invariance (equal factor structure and equal loading patterns) across groups.
#' It is assumed that there are no cross-loadings, correlated item residuals, or uncorrelated factors.
#' @param nIndicators Number of indicators in model
#' @param nFactors Number of factors in model
#' @param nGroups Number of groups
#'
#' @return Degrees of freedom
#' @export
#'
#' @examples
#' df.configuralInvariance(nIndicators = 6, nFactors = 2, nGroups = 2)
df.configuralInvariance <- function(nIndicators, nFactors, nGroups){

  if(nGroups < 2){
    stop("nGroups must be larger than 1")
  }

  # unique information
  information <- ((nIndicators*(nIndicators + 1))/2)*nGroups

  # free parameters
  npar <- npar.configuralInvariance(nIndicators, nFactors, nGroups)

  # degrees of freedom
  df <- information - npar

  return(df)

}
