library(testthat)

test_that("Country not found", {
  expect_error(CountryPopulation("0"))
})
