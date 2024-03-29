% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/npar.metricInvariance.R
\name{npar.metricInvariance}
\alias{npar.metricInvariance}
\title{Free Parameters in Metric Invariance Model}
\usage{
npar.metricInvariance(nIndicators, nFactors, nGroups)
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
Calculates the number of free parameters in a model assuming metric measurement invariance (equal unstandardized factor loadings) across groups.
It is assumed that there are no cross-loadings, correlated item residuals, or uncorrelated factors.
}
\examples{
npar.metricInvariance(nIndicators = 6, nFactors = 2, nGroups = 2)
}
