#' Calculation of the greenshields traffic flow model

#' @param density traffic density
#' @param free_flow_speed free flow speed in km/h (default 130 km/h)
#' @param jam_density jam density in vehicle per km
#' @return Vector of speeds in km/h calculated from the Greenshields model
#' @export
#' @examples
#' greenshields(density = 10)
#' greenshields(density = c(10, 20, 30), free_flow_speed = 130)

greenshields <- function(density, free_flow_speed = 130, jam_density = 150) {
  free_flow_speed * (1 - density/jam_density)
}
