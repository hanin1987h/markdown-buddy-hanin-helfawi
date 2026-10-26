
# Standard Deviation (stdev)
# BDA400 - Assignment 5

stdev <- function(data) {

  # Validate input data
  if (!is.numeric(data) || length(data) == 0 ||
      any(!is.finite(data))) {
    stop("Data must contain finite numeric values")
  }

  # Calculate the mean
  mean_value <- sum(data) / length(data)

  # Calculate differences from the mean
  diff_values <- data - mean_value

  # Calculate squared differences
  squared_diff <- diff_values^2

  # Calculate population variance
  variance <- sum(squared_diff) / length(data)

  # Calculate standard deviation
  standard_deviation <- sqrt(variance)

  # Return the result
  return(standard_deviation)
}
