#' Oldest NBA Player's Age in a given Year
#'
#' This function returns the age of the oldest (limited to year) player  of the NBA according to specified year.
#' @param year A number for years between 1950 and 2017.
#' @keywords NBA
#' @keywords Oldest
#' @return list row with Year, Player, and Age
#' @export
#' @examples
#' oldest_by_year()


# -- create function that takes a year between 1950 and 2017, returns oldest "Age" data point for players of that year -----------------
oldest_by_year <- function(year){
  stopifnot(year >= 1950 , year <= 2017)
  temp <- subset(nba, Year == year)
  col_names <- c("Year", "Player", "Age")
  rows <- temp[col_names]
  oldest <- dplyr::filter(rows, Age == max(Age) )
  return(oldest)
}
