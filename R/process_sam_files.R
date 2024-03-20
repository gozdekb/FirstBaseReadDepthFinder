#' Process SAM Files
#'
#' Processes a vector of SAM file paths. Reads each SAM file, counts occurrences
#' of each V3 and V4 pair, joins with BED data, and returns a tibble with the count data.
#'
#' @param sam_files A character vector of SAM file paths to process.
#' @param bed_data A tibble containing the BED data to be joined with SAM data.
#' @return A tibble containing the count data joined with BED data and pivoted wider.
#' @export
#' @examples
#' final_results <- process_sam_files(sam_files, bed_data)

process_sam_files <- function(sam_files, bed_data) {
  results_list <- list()

  for (sam_file in sam_files) {
    if (!file.exists(sam_file)) {
      print(paste("File not found:", sam_file))
      next
    }

    sam_data <- readLines(sam_file)
    sam_data_no_header <- sam_data[!grepl("^@", sam_data)]

    if (length(sam_data_no_header) == 0) {
      print(paste("No data in file:", sam_file))
      next
    }

    sam_df <- read.delim(textConnection(sam_data_no_header), header = FALSE, sep = "\t")

    result <- sam_df %>%
      count(V3,V4) %>%
      inner_join(bed_data, by = c("V3" = "V3", "V4" = "V4")) %>%
      select(amplikon, V3, V4, n)

    if (nrow(result) == 0) {
      print(paste("Empty result for file:", sam_file))
      next
    }

    result$sample <- sam_file
    results_list[[sam_file]] <- result
    print(paste("Processed file:", sam_file))
  }

  bind_rows(results_list) %>%
    pivot_wider(names_from = "sample", values_from = "n", values_fn = list(n = list))
}
