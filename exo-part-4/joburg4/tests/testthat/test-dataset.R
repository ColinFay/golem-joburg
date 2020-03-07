test_that("dataset is correct", {
  # Check that we have the correct class of object
  expect_is(run, "tbl_df")
  expect_is(run, "data.frame")
  # We need these columns for the app to work
  expect_true( "Date" %in% names(run) )
  expect_true( "Distance" %in% names(run) )
  expect_true( "Title" %in% names(run) )
})
