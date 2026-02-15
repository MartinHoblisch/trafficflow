test_that("Calculation of the greenshields traffic flow model works correctly", {
  expect_equal(greenshields(10), 121.3333, tolerance = 0.01)
  expect_equal(greenshields(150), 0, tolerance = 0.01)
  expect_equal(greenshields(75), 65, tolerance = 0.01)
})

test_that("greenshields works with vector input", {
  result <- greenshields(c(0, 75, 150))
  expect_equal(result, c(130, 65, 0), tolerance = 0.01)
})

test_that("greenshields works with custom parameters", {
  expect_equal(greenshields(50, free_flow_speed = 100, jam_density = 100), 50, tolerance = 0.01)
  expect_equal(greenshields(0, free_flow_speed = 80), 80, tolerance = 0.01)
})
