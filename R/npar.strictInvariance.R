#' Free Parameters in Strict Invariance Model
#'
#' Calculates the number of free parameters in a model assuming strict measurement invariance (equal unstandardized factor loadings, equal item intercepts, equal item residual variances) across groups.
#' It is assumed that there are no cross-loadings, correlated item residuals, or uncorrelated factors.
#' @param nIndicators Number of indicators in model
#' @param nFactors Number of factors in model
#' @param nGroups Number of groups
#'
#' @return Number of free parameters
#' @export
#'
#' @examples
#' npar.strictInvariance(nIndicators = 6, nFactors = 2, nGroups = 2)
npar.strictInvariance <- function(nIndicators, nFactors, nGroups){

  if(nGroups < 2){
    stop("nGroups must be larger than 1")
  }

  npar <- sum(c(
    # loadings
    nIndicators,

    # intercepts
    nIndicators,

    # residual variances
    nIndicators,

    # factor correlations
    nFactors*(nFactors-1)/2 * nGroups,

    # factor variances
    nFactors * (nGroups - 1),

    # factor means
    nFactors * (nGroups - 1)
  ))

  return(npar)

}
