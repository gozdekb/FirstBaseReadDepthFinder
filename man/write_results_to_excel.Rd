% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R, R/write_results_to_excel.R
\name{write_results_to_excel}
\alias{write_results_to_excel}
\title{Write Results to Excel}
\usage{
write_results_to_excel(results, output_file_path)

write_results_to_excel(results, output_file_path)
}
\arguments{
\item{results}{A tibble containing the processed results to write to an Excel file.}

\item{output_file_path}{A string giving the path to the output Excel file.}
}
\description{
Takes the results tibble and writes it to an Excel file.

Takes the results tibble and writes it to an Excel file.
}
\examples{
write_results_to_excel(final_results, "path/to/your/output_file.xlsx")
write_results_to_excel(final_results, "path/to/your/output_file.xlsx")
}
