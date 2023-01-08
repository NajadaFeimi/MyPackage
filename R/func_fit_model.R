fit_model <- function(data) {
  lm(price ~ carat, data) %>%
    coefficients()
}
