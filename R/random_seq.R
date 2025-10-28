#' random_seq
#'
#' @param base_pairs Number of base pairs for the sequence to have.
#'
#' @returns The functions return a random DNA sequence of length determined by the user's input (base_pairs)
#' @export
#'
#' @examples
#' random_seq(9)
random_seq <- function(base_pairs){
  sep_seq <- sample(c("A", "T", "G", "C"), size = base_pairs, replace = TRUE)
  clean_seq <- paste0(sep_seq, collapse = "")
  return(clean_seq)
}
