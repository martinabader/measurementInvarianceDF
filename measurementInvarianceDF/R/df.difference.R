#' Difference in Degrees of Freedom
#'
#' Calculates the difference in degrees of freedom between models with different invariance restrictions.
#'
#' @param nIndicators Number of indicators in model
#' @param nFactors Number of factors in model
#' @param nGroups Number of groups
#' @param nested Nested model with more invariance restrictions. Options include 'metric', 'scalar', or 'strict'
#' @param nesting Nesting (more general) model with fewer invariance restrictions. Options include 'configural', 'metric', or 'scalar'
#'
#' @return Difference in degrees of freedom between nesting and nested model.
#' @export
#'
#' @examples
#' df.difference(nIndicators = 6, nFactors = 2, nGroups = 2, nested = 'metric', nesting = 'configural')
df.difference <- function(nIndicators, nFactors, nGroups, nested, nesting) {

  if(nested == 'configural'){
    stop("Configural model is not nested in other models. Did you mean the configural model to be the nesting model?")
  } else if (nested == 'metric'){
    df.nested <- df.metricInvariance(nIndicators, nFactors, nGroups)
  } else if (nested == 'scalar'){
    df.nested <- df.scalarInvariance(nIndicators, nFactors, nGroups)
  } else if (nested == 'strict'){
    df.nested <- df.strictInvariance(nIndicators, nFactors, nGroups)
  } else {
    stop(paste0(nested, " is no valid option for nested argument"))
  }


  if(nesting == 'configural'){
    df.nesting <- df.configuralInvariance(nIndicators, nFactors, nGroups)
  } else if (nesting == 'metric'){
    df.nesting <- df.metricInvariance(nIndicators, nFactors, nGroups)
  } else if (nesting == 'scalar'){
    df.nesting <- df.scalarInvariance(nIndicators, nFactors, nGroups)
  } else if (nesting == 'strict'){
    stop("Strict model is not nesting other models. Did you mean the strict model to be the nested model?")
  } else {
    stop(paste0(nesting, " is no valid option for nesting argument"))
  }

  df.diff <- df.nested - df.nesting

  if(df.diff < 0){
    stop("The difference in degrees of freedom is negative. Check your input.")
  } else if (df.diff == 0){
    stop("The difference in degrees of freedom is zero. Check your input.")
  } else {
    return(df.diff)
  }

}
