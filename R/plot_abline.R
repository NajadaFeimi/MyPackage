#' Plotting diamonds dataset
#' @param model The model I previously fitted in the other function
#' @import ggplot2
#' @export
#' @return A plot
#' @details
#' This function takes as parameter the data and the linear model we fitted using the function fit_model()
#' of this dataset and it displayes the relationship between carats and the price of the diamonds using as an
#' intercept the coefficients from the fitted model.
#' @examples
#' plot_model(fit_model())

plot_model <- function(model) {
  coef <- model |> coefficients()
  ggplot(ggplot2::diamonds) +
    geom_point(aes(x = carat, y = price)) +
    geom_abline(intercept = coef[1], slope = coef[2])+
  ggtitle("The relationship of the price and the carats of the diamond")

}
