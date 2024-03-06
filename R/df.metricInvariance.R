#' Degrees of Freedom of Metric Invariance Model
#'
#' Calculates the degrees of freedom of a model assuming metric measurement invariance (equal unstandardized factor loadings) across groups.
#' It is assumed that there are no cross-loadings, correlated item residuals, or uncorrelated factors.
#' @param nIndicators Number of indicators in model
#' @param nFactors Number of factors in model
#' @param nGroups Number of groups
#'
#' @return Number of free parameters
#' @export
#'
#' @examples
#' df.metricInvariance(nIndicators = 6, nFactors = 2, nGroups = 2)
df.metricInvariance <- function(nIndicators, nFactors, nGroups){

  if(nGroups < 2){
    stop("nGroups must be larger than 1")
  }

  # unique information
  information <- ((nIndicators*(nIndicators + 1))/2)*nGroups

  # free parameters
  npar <- npar.metricInvariance(nIndicators, nFactors, nGroups)

  # degrees of freedom
  df <- information - npar

  return(df)

}
