test_that("check output type", {
  expect_identical(class(fit_model()), "lm")
})
