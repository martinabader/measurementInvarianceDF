test_that("df.strictInvariance works", {
  expect_equal(df.difference(nIndicators = 6, nFactors = 2, nGroups = 2, nested = 'scalar', nesting = 'configural'), 8)

  expect_equal(df.difference(nIndicators = 6, nFactors = 2, nGroups = 2, nested = 'metric', nesting = 'configural'), 4)

  expect_equal(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'strict', nesting = 'scalar'), 80)

  expect_equal(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'scalar', nesting = 'metric'), 64)

  expect_equal(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'metric', nesting = 'configural'), 64)

  expect_error(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'metric', nesting = 'scalar'), "The difference in degrees of freedom is negative. Check your input.")

  expect_error(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'metric', nesting = 'metric'), "The difference in degrees of freedom is zero. Check your input.")

  expect_error(df.difference(nIndicators = 20, nFactors = 4, nGroups = 5, nested = 'configural', nesting = 'metric'), "Configural model is not nested in other models. Did you mean the configural model to be the nesting model?")

  expect_error(df.difference(nIndicators = 6, nFactors = 2, nGroups = 1, nested = 'metric', nesting = 'configural'), "nGroups must be larger than 1")

})
