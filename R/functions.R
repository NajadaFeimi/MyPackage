#' Easily filter unemployment data for Luxembourg
#' @param dataA predicate condition indicating the regional level of interest. See details for more.
#' @importFrom janitor clean_names
#' @importFrom dplyr filter select %>%
#' @import ggplot2
#' @export
#' @return A data frame
#' @details
#' This function allows the user to create a data frame for several regional levels. The first level
#' is the complete country. The second level are cantons, and the third level are neither cantons
#' nor the whole country, so the communes. Individual communes can be selected as well.
#' `level` must be predicate condition passed down to dplyr::filter. See the examples below
#' for its usage.
#' @examples
#' # basic function
#' get_data <- function(file) {
#'   aq <- data.frame(diamonds) %>%
#'   filter(!is.na(price))
#' }
#'
#' fit_model <- function(data) {
#' lm(price ~ carat, data) %>%
#' coefficients()
#' }


fit_model <- function(data) {
  lm(price ~ carat, data) %>%
    coefficients()
}

plot_model <- function(model, data) {
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

