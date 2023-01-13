test_that("Check output type for plot", {
  plot <- plot_model(fit_model())
  setequal(class(plot), c("gg", "ggplot"))
})
