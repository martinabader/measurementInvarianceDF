test_that("df.metricInvariance works", {
  expect_equal(df.metricInvariance(nIndicators = 6, nFactors = 2, nGroups = 2), 20)

  expect_equal(df.metricInvariance(nIndicators = 8, nFactors = 1, nGroups = 3), 74)
})
