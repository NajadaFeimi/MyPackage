#' Plotting diamonds dataset
#' @param data simply diamonds free dataset
#' @importFrom dplyr filter select %>%
#' @import ggplot2
#' @export
#' @details
#' This function takes some data and uses them to fit the model
#' @examples
#' # basic function
#' fit_model <- function(data) {
#' lm(price ~ carat, data) %>%
#' coefficients()
#' }

fit_model <- function(data) {
  lm(price ~ carat, data=data) %>%
    coefficients()
}


