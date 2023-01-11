#' Plotting diamonds dataset
#' @import ggplot2
#' @export
#' @return A plot
#' @details
#' This function takes as parameter the data and the linear model we fitted the data at the other function
#' @examples
#' plot_model <- function(model, data) {
#'  ggplot(data) +
#'   geom_point(aes(x = carat, y = price)) +
#'    geom_abline(intercept = model[1], slope = model[2])+
#'    ggtitle("The relationship of the price and the carats of the diamond")
#' }

plot_model <- function(model, data) {
  ggplot(data) +
    geom_point(aes(x = carat, y = price)) +
    geom_abline(intercept = model[1], slope = model[2])+
  ggtitle("The relationship of the price and the carats of the diamond")

}
