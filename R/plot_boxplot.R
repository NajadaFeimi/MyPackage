#' Plotting diamonds dataset
#' @param data simply diamonds free dataset
#' @import ggplot2
#' @export
#' @return A facet grid plot
#' @details
#' This function takes the diamonds dataset and uses it to display jittered boxplots and show distribution of
#' diamonds for each diamond cut category like: fair, good, very good, premium, ideal.
#' The jittered data points show the relationship between the carats and the price for each cut category
#' colored by diamond clarity. I chose to display this grid of plots because I think it is very informative
#' regarding this dataset. It also takes only dataframes as parameters.


plot_stats <- function(data) {
  if (!(is.data.frame({{data}}))){
    stop("Your input should be a dataframe.")
  }
  ggplot(
    diamonds[sample(nrow(diamonds), 1000), ],
    aes(carat, price, colour=clarity)
  )+
    geom_point(position="jitter", alpha=0.6)+
    facet_grid(~cut) +
    scale_x_continuous(breaks=seq(0, 5, 1)) +
    geom_boxplot(alpha=0, colour="black") +
    scale_color_brewer(palette = "Set1")+
    ggtitle("Boxplots with jittered data points for each diamond cut")
}
