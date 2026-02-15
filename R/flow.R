#' Calculate traffic flow from density

#' @param density traffic density
#' @param free_flow_speed free flow speed in km/h (default 130 km/h)
#' @param jam_density jam density in vehicle per km
#' @return Traffic flow in vehicles per hour
#' @export
#' @examples
#' flow_from_density(density = 10)
#' flow_from_density(density = c(10, 20, 30), free_flow_speed = 130)

flow_from_density <- function(density, free_flow_speed = 130, jam_density = 150) {
  speed <- greenshields(density, free_flow_speed, jam_density)
  flow <- density * speed
  return(flow)
}
