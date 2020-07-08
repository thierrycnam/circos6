#' plot_circos_from_df
#'
#' Plot a circos from a tibble
#'
#' @param infile input file
#'
#' @import readr
#' @import circlize
#' @import ggsci
#' @return
#' @export
#'
#' @examples
plot_circos_from_df <- function(df) {
  tb <- table(df[, 1:2])
  names_   <- colnames(tb)
  no_color <- 0
  colors_ <- pal_futurama()(length(names_)-no_color)
  colors_ <- c(colors_, rep("grey", no_color))
  names(colors_) <- names_
  chordDiagram(tb, annotationTrack = c("grid", "name"), grid.col = colors_)
}
