test_that("npar.scalarInvariance works", {
  expect_equal(npar.scalarInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 30)

  expect_equal(npar.scalarInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 44)

})
