
# Crossover Function
# BDA400 - Assignment 5

crossover <- function(arr1, arr2) {

  # Check if both arrays have the same length
  if (length(arr1) != length(arr2)) {
    stop("Both arrays should have the same length")
  }

  # Validate input data
  if (!is.numeric(arr1) || !is.numeric(arr2) ||
      any(!is.finite(arr1)) || any(!is.finite(arr2))) {
    stop("Both arrays must contain finite numeric values")
  }

  # Initialize crossover signals
  crossover_signals <- rep("None", length(arr1))

  # Check for upward and downward crossovers
  if (length(arr1) >= 2) {
    for (i in 2:length(arr1)) {

      if (arr1[i] > arr2[i] &&
          arr1[i - 1] <= arr2[i - 1]) {

        crossover_signals[i] <- "Up"

      } else if (arr1[i] < arr2[i] &&
                 arr1[i - 1] >= arr2[i - 1]) {

        crossover_signals[i] <- "Down"

      } else {

        crossover_signals[i] <- "None"

      }
    }
  }

  return(crossover_signals)
}
