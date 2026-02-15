test_that("Calculate traffic flow from density works correctly", {
  expect_equal(flow_from_density(75), 4875, tolerance = 0.01)
  expect_equal(flow_from_density(0), 0, tolerance = 0.01)
  expect_equal(flow_from_density(c(75, 100, 0)), c(4875.000, 4333.333, 0), tolerance = 0.01)

})

test_that("flow_from_density works with custom parameters", {
  expect_equal(flow_from_density(50, free_flow_speed = 100, jam_density = 100), 2500, tolerance = 0.01)
})
