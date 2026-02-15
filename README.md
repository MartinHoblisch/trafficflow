# trafficflow

<!-- badges: start -->
<!-- badges: end -->

The goal of trafficflow is to provide functions for calculating traffic flow based on the Greenshields model. Includes calculations for speed-density relationships, flow from density, and critical density for maximum flow.

## Installation

This is a learning project. Clone the repository and use `devtools::load_all()` to load it locally.

## Example
``` r
library(trafficflow)

# Calculate speed from density using Greenshields model
greenshields(density = 75)

# Calculate flow from density
flow_from_density(density = 75)

# Find critical density for maximum flow
critical_density()
```
