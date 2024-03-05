test_that("npar.configuralInvariance works", {
  expect_equal(npar.configuralInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 26)

  expect_equal(npar.configuralInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 48)

})
