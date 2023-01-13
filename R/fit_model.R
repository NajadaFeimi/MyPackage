#' Fitting the dataset Diamonds to a linear model
#' @param data simply diamonds free dataset
#' @importFrom dplyr filter select %>%
#' @import ggplot2
#' @export
#' @details
#' This function takes the diamonds dataset and fits a linear model where price is the dependent
#' variable and carat is the independent variable. By default it takes the diamonds dataframe because
#' in the inside of the function I have determined the target and independent feature, but theoretically
#' it can take any dataframe as an input. It also does not allow the user to put anything else, but a dataframe,
#' otherwise it will pop an error message.
#' @examples
#' fit <-fit_model()

fit_model <- function(data=ggplot2::diamonds) {
  if (!(is.data.frame({{data}}))){
    stop("Your input should be a dataframe.")
  }
  lm(price ~ carat, data=data)
}


