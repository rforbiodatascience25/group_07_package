test_that("input_DNA correctly translates codons to amino acids", {
  # Setup a minimal codon lookup table
  codon_07 <- c(
    "UUU" = "F", "UUC" = "F",
    "AUG" = "M",
    "GGG" = "G",
    "UAA" = "_"
  )

  # Test single codon translation
  expect_equal(input_DNA("UUU"), "F")
  expect_equal(input_DNA("GGG"), "G")

  # Test multiple codons in sequence
  expect_equal(input_DNA(c("AUG", "GGG")), "MG")

  # Test stop codon handling (depends on your table)
  expect_equal(input_DNA("UAA"), "_")

  # Edge case: unknown codon
  expect_equal(input_DNA("XYZ"), "NA")
})
