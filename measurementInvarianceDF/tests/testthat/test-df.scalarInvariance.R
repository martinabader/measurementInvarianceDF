test_that("df.scalarInvariance works", {
  expect_equal(df.scalarInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 24)

  expect_equal(df.scalarInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 88)
})
