#' Read BED File
#'
#' Reads a BED file and returns a tibble with columns V3, V4, X5, and amplikon.
#'
#' @param bed_file_path A string giving the file path of the BED file to read.
#' @return A tibble with the columns V3, V4, X5, and amplikon name from the BED file.
#' @export
#' @examples
#' bed_data <- read_bed_file("path/to/your/bed_file.bed")
read_bed_file <- function(bed_file_path) {
  read_tsv(bed_file_path, col_names = c("V3","V4","X5","amplikon"))
}


