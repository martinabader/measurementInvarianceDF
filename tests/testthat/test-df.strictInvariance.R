test_that("df.strictInvariance works", {
  expect_equal(df.strictInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 30)

  expect_equal(df.strictInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 104)
})
