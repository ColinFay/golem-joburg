test_that("filter_and_draw works", {
  res <- filter_and_draw("2020-01-01", "2020-02-28")
  expect_is(res, "ggplot")
})
