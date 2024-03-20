#' Write Results to Excel
#'
#' Takes the results tibble and writes it to an Excel file.
#'
#' @param results A tibble containing the processed results to write to an Excel file.
#' @param output_file_path A string giving the path to the output Excel file.
#' @export
#' @examples
#' write_results_to_excel(final_results, "path/to/your/output_file.xlsx")

write_results_to_excel <- function(results, output_file_path) {
  write.xlsx(results, output_file_path)
}
