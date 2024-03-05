test_that("df.configuralInvariance works", {
  expect_equal(df.configuralInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 16)

  expect_equal(df.configuralInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 60)
})
