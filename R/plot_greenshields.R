#' Visualisation of the greenshields traffic flow model

#' @param free_flow_speed free flow speed in km/h (default 130 km/h)
#' @param jam_density jam density in vehicle per km (default 150)
#' @return A ggplot2 object showing speed-density relationship
#' @export
#' @examples
#' plot_greenshields(free_flow_speed = 100, jam_density = 100)
#' plot_greenshields(free_flow_speed = 130, jam_density = 150)
#' plot_greenshields(80, 100)


plot_greenshields <- function(free_flow_speed = 130, jam_density = 150) {

  # Erstelle Daten für die Kurve
  density <- seq(0, jam_density, length.out = 100)
  speed <- greenshields(density, free_flow_speed, jam_density)
  df <- data.frame(density = density, speed = speed)

  # Plot mit ggplot2
  ggplot2::ggplot(df, ggplot2::aes(x = density, y = speed)) +
    ggplot2::geom_line(color = "steelblue", linewidth = 1.2) +
    ggplot2::labs(
      title = "Greenshields Speed-Density Relationship",
      x = "Density (veh/km)",
      y = "Speed (km/h)"
    ) +
    ggplot2::geom_vline(
      xintercept = jam_density / 2,
      linetype = "dashed",
      color = "red",
      alpha = 0.7
    ) +
    ggplot2::annotate(
      "text",
      x = jam_density / 2,
      y = free_flow_speed * 0.1,
      label = "Critical Density",
      color = "red",
      hjust = -0.1
    ) +
    ggplot2::theme_minimal()
}
