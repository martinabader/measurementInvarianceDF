test_that("npar.strictInvariance works", {
  expect_equal(npar.strictInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 24)

  expect_equal(npar.strictInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 28)

})
