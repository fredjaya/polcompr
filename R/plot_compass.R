#' Political compass
#'
#' Create a scatter plot of "The Political Compass" results.
#'
#'
#' @param data A table of values to be plot. Input requires two columns for
#' 'Economic' and 'Social' values.
#'
#' @return None
#'
#' @author Fred Jaya
#' @references \url{https://www.politicalcompass.org}
#'
#' @export
#' @import ggplot2

plot_compass <- function (data) {
  # Call dataset, set plane coordinates and background
  print("Plotting graph ----------")
  q <- ggplot(df, aes(Economic, Social)) +
    theme_minimal() +
    coord_cartesian(xlim = c(-10,10), ylim = c(-10,10)) +
    geom_rect(aes(xmin = -10, xmax = 0,
                  ymin = 0  , ymax = 10),
              fill = "#ff7474") +
    geom_rect(aes(xmin = 0, xmax = 10,
                  ymin = 0, ymax = 10 ),
              fill = "#44aafd") +
    geom_rect(aes(xmin = -10, xmax = 0,
                  ymin = -10, ymax = 0),
              fill = "#98ec98") +
    geom_rect(aes(xmin =   0, xmax = 10,
                  ymin = -10, ymax =  0),
              fill = "#c09aea")
  # Create plot, plot labels and axis labels
  p <- q +
    geom_point(size = 3, colour = "red") +
    geom_point(size = 3, shape = 21) +
    labs(x = "Economic", y = "Social")
  plot(p)
  rm(p, q)
  return("Done!")

}
