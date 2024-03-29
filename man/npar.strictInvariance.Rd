% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/npar.strictInvariance.R
\name{npar.strictInvariance}
\alias{npar.strictInvariance}
\title{Free Parameters in Strict Invariance Model}
\usage{
npar.strictInvariance(nIndicators, nFactors, nGroups)
}
\arguments{
\item{nIndicators}{Number of indicators in model}

\item{nFactors}{Number of factors in model}

\item{nGroups}{Number of groups}
}
\value{
Number of free parameters
}
\description{
Calculates the number of free parameters in a model assuming strict measurement invariance (equal unstandardized factor loadings, equal item intercepts, equal item residual variances) across groups.
It is assumed that there are no cross-loadings, correlated item residuals, or uncorrelated factors.
}
\examples{
npar.strictInvariance(nIndicators = 6, nFactors = 2, nGroups = 2)
}
