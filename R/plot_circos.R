#' plot_circos
#'
#' Plot a circos from a tibble
#'
#' @param infile foefjeopfejfejpofejf
#'
#' @import readr
#' @import circlize
#' @import ggsci
#' @importFrom circlize chordDiagram
#' @return
#' @export
#'
#' @examples
plot_circos <- function(infile) {
  df <- readr::read_csv(infile, col_names = TRUE,
                 col_types = cols(.default = col_character()))
  tb <- table(df[, 1:2])
  names_   <- colnames(tb)
  no_color <- 0
  colors_ <- pal_futurama()(length(names_)-no_color)
  colors_ <- c(colors_, rep("grey", no_color))
  names(colors_) <- names_
  chordDiagram(tb, annotationTrack = c("grid", "name"), grid.col = colors_)
}
