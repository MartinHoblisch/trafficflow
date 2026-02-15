test_that("critical_density returns correct structure and values", {
  result <- critical_density()

  # Teste dass es ein Dataframe ist
  expect_true(is.data.frame(result))

  # Teste die Spaltennamen
  expect_true("critical_density" %in% names(result))
  expect_true("speed_at_critical" %in% names(result))
  expect_true("max_flow" %in% names(result))

  # Teste die Werte bei Defaults
  expect_equal(result$critical_density, 75, tolerance = 0.01)
  expect_equal(result$speed_at_critical, 65, tolerance = 0.01)
  expect_equal(result$max_flow, 4875, tolerance = 0.01)
})

test_that("critical_density works with custom parameters", {
  result <- critical_density(free_flow_speed = 100, jam_density = 100)
  expect_equal(result$critical_density, 50, tolerance = 0.01)
  expect_equal(result$speed_at_critical, 50, tolerance = 0.01)
  expect_equal(result$max_flow, 2500, tolerance = 0.01)
})
