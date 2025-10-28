#' Translate codons into an amino acid sequence
#'
#' This function takes a vector of codons and returns the corresponding amino acid sequence
#' as a single string, using the lookup table `codon_07`.
#'
#' @param codons A character vector of codons (e.g. "AUG", "GAA", "UAA").
#' @return A single character string representing the translated amino acid sequence.
#' @examples
#' codons <- c("AUG", "GAA", "UAA")
#' input_DNA(codons)
#' @export
input_DNA <- function(codons) {
  amino_acid_output <- paste0(codon_07[codons], collapse = "")
  return(amino_acid_output)
}
