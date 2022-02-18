#' Fahrenheit to Celsius
#'
#' @param fahr Temperature in Fahrenheit as a vector
#'
#' @return Temperature in Celsius
#' @export
#'
#' @examples
#' fahr_to_celsius(c(212, 32))
fahr_to_celsius <- function(fahr){
  celsius <- (fahr - 32)*5/9
  return(celsius)
}



#' Title
#'
#' @param celsius 
#'
#' @return
#' @export
#'
#' @examples
celsius_to_fahr <- function(celsius){
  fahr <- celsius*9/5 + 32
  return(fahr)
}

convert_temps <- function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <- celsius + 273.15
  return(data.frame(fahrenheit = fahr,
                    celsius = celsius,
                    kelvin = kelvin))
}

df <- convert_temps(airtemps)
