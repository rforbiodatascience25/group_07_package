set.seed(999) #Set seed so we know what's the "random" sequence going to be

test_that("random sequence generation works", {
  expect_equal(random_seq(9), "GCAGATATT")
})
