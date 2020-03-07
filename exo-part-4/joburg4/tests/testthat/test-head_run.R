test_that("head_run works", {
  expect_equal(nrow(head_run(5)), 5)
  expect_equal(nrow(head_run(10)), 10)
})
