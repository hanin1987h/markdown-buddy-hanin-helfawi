
# Linear Regression (linreg)
# BDA400 - Assignment 5

linreg <- function(regressionSource, regressionLength,
                   regressionOffset) {

  # Calculate total number of elements
  n <- length(regressionSource)

  # Validate input data
  if (!is.numeric(regressionSource) ||
      n == 0 || any(!is.finite(regressionSource))) {
    stop("regressionSource must contain finite numeric values")
  }

  # Validate regression length
  if (!is.numeric(regressionLength) ||
      length(regressionLength) != 1 ||
      !is.finite(regressionLength) ||
      regressionLength < 2 ||
      regressionLength != floor(regressionLength)) {
    stop("regressionLength must be an integer of at least 2")
  }

  if (regressionLength > n) {
    stop("regressionLength cannot be greater than the number of elements in regressionSource")
  }

  # Validate regression offset
  if (!is.numeric(regressionOffset) ||
      length(regressionOffset) != 1 ||
      !is.finite(regressionOffset) ||
      regressionOffset < 0 ||
      regressionOffset != floor(regressionOffset)) {
    stop("regressionOffset must be a non-negative integer")
  }

  if (regressionOffset >= regressionLength) {
    stop("regressionOffset must be less than regressionLength")
  }

  # Calculate starting and ending indices
  start_index <- max(1, n - regressionLength +
                       regressionOffset)
  end_index <- min(n, n - regressionOffset)

  # Extract the relevant data
  source_subset <- regressionSource[start_index:end_index]

  # Create index values
  index_values <- seq_along(source_subset)

  # Calculate means
  mean_index <- sum(index_values) / length(index_values)
  mean_source <- sum(source_subset) / length(source_subset)

  # Calculate slope numerator and denominator
  numerator <- sum((index_values - mean_index) *
                     (source_subset - mean_source))
  denominator <- sum((index_values - mean_index)^2)

  # Calculate slope and intercept
  slope <- numerator / denominator
  intercept <- mean_source - slope * mean_index

  # Calculate predicted values
  predicted_values <- slope * index_values + intercept

  # Return results
  result <- list(
    slope = slope,
    intercept = intercept,
    predicted_values = predicted_values
  )

  return(result)
}
