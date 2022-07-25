test_that("function works", {
  ## use the function first and store as variable
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")
  expect_true(tibble::is_tibble(italy))
})
