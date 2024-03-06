# measurementInvarianceDF

measurementInvarianceDF is an R-package that allows you to compute the number of free parameters and degrees of freedom of multi-group confirmatory factor analysis models (MG-CFA) imposing different levels of measurement invariance.

## Measurement Invariance

When comparing latent variables with respect to a moderator, it is necessary that the measurement model is invariant across that moderator. In the case of categorical moderator, a popular approach to evaluating measurement invariance are multi-group confirmatory factor analysis models. Different levels of measurement invariance can be tested by imposing increasingly restrictive equality-constraints across the groups of the moderator. The levels of measurement invariance which are commonly distinguished are:

-   Configural invariance:
    -   equal number of factors and pattern of free/fixed loadings
-   Metric invariance:
    -   equal number of factors and pattern of free/fixed loadings
    -   equal unstandardized factor loadings
-   Scalar invariance:
    -   equal number of factors and pattern of free/fixed loadings
    -   equal unstandardized factor loadings
    -   equal indicator intercepts
-   Strict invariance:
    -   equal number of factors and pattern of free/fixed loadings
    -   equal unstandardized factor loadings
    -   equal indicator intercepts
    -   equal residual variances

When imposing those constraints, attention should be paid to the scaling of the latent variables. Depending on the scaling approach, some parameters may also need to be freed given certain invariance assumptions. For instance, when scaling the latent variables by setting their variance to 1 and imposing the assumptions of metric invariance, only the variances of the first group need to be set to 1, while the variances in the remaining groups may be freed.

The package measurementInvarianceDF helps to verify whether a MG-CFAs with certain invariance constraints have been correctly specified by allowing to compute the expected number of free parameters and degrees of freedom, respectively. Furthermore, the difference in degrees of freedom between nested models with different invariance constraints can be calculated.

## Examples

Before showing a number of examples, it should be noted that the package measurementInvarianceDF assumes that measurement invariance is evaluated in the context of multi-group confirmatory factor analysis models. Furthermore, it is assumed that the model does not include cross-loadings or correlated residuals, and that all factors in the model are allowed to correlate. As such, the package is suitable for single-factor or correlated factors models but not for more complex hierarchical models (e.g., bifactor models, higher-order models).

The first example calculates the number of free parameters estimated by a two-factor model (`nFactors = 2`) with a total of 10 indicators (`nIndicators = 10`) assuming configural invariance across three groups (`nGroups = 3`) using the function `npar.configuralInvariance`:

``` r
npar.configuralInvariance(nIndicators = 10, nFactors = 2, nGroups = 3)
```

Alternatively, we could also calculate the degrees of freedom of the same model using the function `df.configuralInvariance`:

``` r
df.configuralInvariance(nIndicators = 10, nFactors = 2, nGroups = 3)
```

We might also be interested in knowing the difference in the degrees of freedom between a models assuming configural invariance and metric invariance. To this end, we can use the function `df.difference`. The more general configural model, which imposes fewer equality constraints, is specified in the `nesting` argument. The metric model is nested in the configural model because it imposes more equality constraints than the configural model, and is specified in the `nested` argument:

``` r
df.difference(nIndicators = 10, nFactors = 2, nGroups = 3, nesting = 'configural', nested = 'metric')
```

