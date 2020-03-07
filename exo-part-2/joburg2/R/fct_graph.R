#' @importFrom dplyr filter
#' @importFrom ggplot2 ggplot aes geom_col
filter_and_draw <- function(start, end){
  res <- filter(run, Date >= as.POSIXct(start) & Date <= as.POSIXct(end))
  ggplot(res, aes(Date, Distance)) + 
    geom_col()
}