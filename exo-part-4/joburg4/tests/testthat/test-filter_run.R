test_that("filter_run works", {
  expect_true(
   nrow( filter_run("Bruz Running") ) < nrow(run)
  )
})
