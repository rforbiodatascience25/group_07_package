#' base_density plot
#'
#' @param sequence DNA or RNA Sequence to plot
#'
#' @returns The function plots the count of bases present in your sequence
#' @export
base_density <- function(sequence){
  present_bases <- sequence
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(present_bases, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Sequence"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Sequence, y = Counts, fill = Sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
