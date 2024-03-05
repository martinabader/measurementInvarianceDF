test_that("npar.metricInvariance works", {
  expect_equal(npar.metricInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 22)

  expect_equal(npar.metricInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 34)

})
