test_that("plot_greenshields returns a ggplot object", {
  result <- plot_greenshields()
  expect_true(ggplot2::is_ggplot(result))
})
