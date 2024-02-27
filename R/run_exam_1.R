#' Run the exam
#'
#' @return
#' @export
#'
#' @examples
#' run_exam_1()
run_exam_1 <- function() {
  quarto::quarto_serve("inst/shiny-exams/parcial_1/parcial_1.qmd",
                       browse = TRUE)
}
