#' Plotting diamonds dataset
#' @param data simply diamonds free dataset
#' @import ggplot2
#' @export
#' @return A plot
#' @details
#' This function takes some data and uses them to fit the model
#' @examples
#' # basic function
#' fit_model <- function(data) {
#' lm(price ~ carat, data) %>%
#' coefficients()
#' }
plot_stats <- function(data) {
  ggplot(
    diamonds[sample(nrow(diamonds), 1000), ],
    aes(carat, price, colour=clarity)
  )+
    geom_point(position="jitter", alpha=0.6)+
    facet_grid(~cut) +
    scale_x_continuous(breaks=seq(0, 5, 1)) +
    geom_boxplot(alpha=0, colour="black") +
    scale_color_brewer(palette = "Set1")
}
