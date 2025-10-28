#' TRANSCRIBE
#'
#' @param DNA It uses DNA as input
#'
#' @returns It returns the ARN sequence corresponding to the inputed DNA
#' @export
#'<-
transcribe <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
