
# Moving Average Convergence Divergence (MACD)
# BDA400 - Assignment 5

macd <- function(data, short_period, long_period, signal_period) {

  # Validate the input data
  if (!is.numeric(data) || length(data) == 0 ||
      any(!is.finite(data))) {
    stop("Data must contain finite numeric values")
  }

  # Validate the periods
  periods <- c(short_period, long_period, signal_period)

  if (!is.numeric(periods) || length(periods) != 3 ||
      any(!is.finite(periods)) ||
      any(periods < 1) ||
      any(periods != floor(periods))) {
    stop("All periods must be positive integers")
  }

  # Calculate short-term and long-term EMA
  short_ema <- ema(data, short_period)
  long_ema <- ema(data, long_period)

  # Calculate the MACD line
  macd_line <- short_ema - long_ema

  # Calculate the signal line
  signal_line <- ema(macd_line, signal_period)

  # Calculate the histogram
  histogram <- macd_line - signal_line

  # Return all three results
  result <- list(
    macd_line = macd_line,
    signal_line = signal_line,
    histogram = histogram
  )

  return(result)
}
