#' Correlation Matrix of Numerical NBA Stats by Year
#'
#' This function returns a correlation matrix of the numerical NBA stats from a specified year between 1950 and 2017.
#' @param year A number for years between 1950 and 2017.
#' @keywords NBA
#' @keywords Correlation matrix by year
#' @return  double type of correlation matrix
#' @export
#' @examples
#' cor_matrx_by_year()


# -- create function that takes a year between 1950 and 2017, returns correlation matrix for numeric variables only for that year -----------------
cor_matrx_by_year <- function(year){
  stopifnot(year >= 1950 , year <= 2017)
  temp <- subset(nba, Year == year)
  temp_num <- purrr::keep(temp, is.numeric)
  return(cor(temp_num))

}
