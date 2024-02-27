#' @export
run_exam_1 <- function() {
  # appDir <- system.file("shiny-exams", "parcial_1", package = "maf3074")
  # if (appDir == "") {
  #   stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
  # }
  #
  # shiny::runApp(appDir, display.mode = "normal", launch.browser = TRUE)
  quarto::quarto_serve("inst/shiny-exams/parcial_1/parcial_1.qmd",
                       browse = TRUE)
}
