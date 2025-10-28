test_that("Codon extraction works", {
  expect_equal(give_codons("ATGCCCGTA"), c("ATG", "CCC", "GTA"))
  expect_equal(give_codons("ATGCCCATT"), c("ATG", "CCC", "ATT")) #output is a character vector of codons
})

#function name is foofy
#use_r("foofy")    # creates and opens R/foofy.R
#use_test("foofy") # creates and opens tests/testthat/test-foofy.R
