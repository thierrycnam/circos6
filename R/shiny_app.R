#' shiny_app
#'
#' Run a mini shiny app to build circos plot.
#'
#' @return
#' @export
#' @import shiny
#'
#' @examples
shiny_app <- function() {
  appDir <- system.file("my_app", package = "circos6")
  shiny::runApp(appDir, display.mode = "normal")
}
