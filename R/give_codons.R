#' give_codons
#'
#' @param sequence the DNA or RNA sequence that we are working with
#' @param start a starting position in the sequence that indicates where to start reading
#'
#' @returns returns all the codons
#' @export
#'
#' @examples
#' give_codons("ATGCCCGTA")
give_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence) #counts how many characters are in the string
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3), #starting positions for each codon
                      last = seq(from = 3+start-1, to = seq_length, by = 3)) #ending positions for each codon
  #substring takes each triplet between those start and end positions
  return(codons)
}

#positions 1–3 → "ATG"
#positions 4–6 → "CCC"
#positions 7–9 → "GTA"

# give_codons("ATGCCCGTA")
# output: "ATG" "CCC" "GTA"



