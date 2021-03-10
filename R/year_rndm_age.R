#' Random NBA Player's Age by Year
#'
#' This function returns the age of a random player of the NBA according to specified year.
#' @param year A number for years between 1950 and 2017.
#' @keywords NBA
#' @keywords Age by year
#' @return list row with Year, Player, and Age
#' @export
#' @examples
#' year_rndm_age()

# -- create function that takes a year between 1950 and 2017, returns "Age" data point for some random player -----------------
year_rndm_age <- function(year){
  stopifnot(year >= 1950 , year <= 2017)
  temp <- subset(nba,Year == year)
  row <- (temp[sample(nrow(temp), 1), ])
  col_names <- c("Year", "Player", "Age")
  row <- tibble::tibble(row[col_names])
  return(row)
}
