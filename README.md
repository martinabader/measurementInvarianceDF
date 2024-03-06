measurementInvarianceDF
=====
  
measurementInvarianceDF is an R-package that allows you to compute the number of free parameters and degrees of freedom of multi-group confirmatory factor analysis models (MG-CFA) imposing different levels of measurement invariance. 

## Measurement Invariance


## Quick Examples for model-free power analyses

Determine the required sample size to detect misspecifications of a model (involving df = 100 degrees of freedom) corresponding to RMSEA = .05 with a power of 80% on an alpha error of .05:
  
```
ap <- semPower.aPriori(effect = .05, effect.measure = 'RMSEA', 
                       alpha = .05, power = .80, df = 100)
summary(ap)
```


