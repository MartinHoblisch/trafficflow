#' Calculate critical_density from free flow speed and jam density

#' @param free_flow_speed free flow speed in km/h (default 130 km/h)
#' @param jam_density jam density in vehicle per km (default = 150)
#' @return Data frame of critical density containing: critical_density, speed_at_critical and max_flow
#' @export
#' @examples
#' critical_density(free_flow_speed = 100)
#' critical_density(free_flow_speed = 130, jam_density = 150)


critical_density <- function(free_flow_speed = 130, jam_density = 150) {
k_crit <- jam_density / 2
v_crit <- greenshields(k_crit, free_flow_speed, jam_density)
q_max <- k_crit * v_crit

return(data.frame(critical_density = k_crit, speed_at_critical = v_crit, max_flow = q_max))
}
