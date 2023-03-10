% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_boxplot.R
\name{plot_stats}
\alias{plot_stats}
\title{Plotting diamonds dataset}
\usage{
plot_stats(data)
}
\arguments{
\item{data}{simply diamonds free dataset}
}
\value{
A facet grid plot
}
\description{
Plotting diamonds dataset
}
\details{
This function takes the diamonds dataset and uses it to display jittered boxplots and show distribution of
diamonds for each diamond cut category like: fair, good, very good, premium, ideal.
The jittered data points show the relationship between the carats and the price for each cut category
colored by diamond clarity. I chose to display this grid of plots because I think it is very informative
regarding this dataset. It also takes only dataframes as parameters.
}
