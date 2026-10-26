
sma <- function(data, period) {
  if (!is.numeric(data) || length(data) == 0 ||
      any(!is.finite(data))) {
    stop("Data must contain finite numeric values")
  }

  if (length(period) != 1 || !is.numeric(period) ||
      is.na(period) || !is.finite(period) ||
      period < 1 || period != floor(period)) {
    stop("Period must be a positive integer")
  }

  if (length(data) < period) {
    stop("Data length should be greater than or equal to the period")
  }

  sma_values <- numeric(length(data) - period + 1)

  for (i in seq_along(sma_values)) {
    current_window <- data[i:(i + period - 1)]
    sma_values[i] <- sum(current_window) / period
  }

  return(sma_values)
}
