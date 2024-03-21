# FirstBaseReadDepthFinder

The `FirstBaseReadDepthFinder` R package is designed to analyze amplicon-based NGS data to find read depths at the first bases of amplicons. This package is particularly useful for researchers and bioinformaticians working with amplicon sequencing data, providing insights into the sequencing coverage of multiple SAM files at the same time. 

## Installation

To install the `FirstBaseReadDepthFinder` package from the `.tar.gz` file, use the following command in R:

```R
install.packages("path/to/FirstBaseReadDepthFinder_0.1.0.tar.gz", repos = NULL, type = "source")
#Replace path/to/FirstBaseReadDepthFinder_0.1.0.tar.gz with the actual path to the .tar.gz file of the package.
```

## Usage
After installation, you can use the package to process SAM files and generate a report on the read depths at the first base of amplicons. Here's a basic example:

```R
library(FirstBaseReadDepthFinder)

# Specify the path to your BED file and SAM files
bed_file_path <- "path/to/your/amplicons.bed"
sam_files <- c("sample1.sam", "sample2.sam")

# Process the SAM files
bed_data <- read_bed_file(bed_file_path)
##Note: BED file must have chr, start, end and amplicon columns. Start and end coordinates must be the same point at which the amplicon's first base starts.
final_results <- process_sam_files(sam_files, bed_data)


# Output the results to an Excel file
write_results_to_excel(final_results, "output.xlsx")
```
## Dependencies
This package depends on the tidyverse, janitor, and openxlsx packages. They can be installed from CRAN as follows:

```R
install.packages(c("tidyverse", "janitor", "openxlsx"))
```
## Contributing
Contributions to the FirstBaseReadDepthFinder package are welcomed! If you have suggestions for improvements or encounter any issues, please open an issue or pull request on our GitHub repository.

## License
This project is open source and is provided for educational or informational purposes.

## Contact
For questions or feedback regarding FirstBaseReadDepthFinder, please contact me through the GitHub repository issue tracker.
