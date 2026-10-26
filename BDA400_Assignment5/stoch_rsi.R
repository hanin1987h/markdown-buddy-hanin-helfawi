
# Stochastic RSI (StochRSI)
# BDA400 - Assignment 5

stoch_rsi <- function(data, period, k_period, d_period) {

  # Validate the periods
  periods <- c(period, k_period, d_period)

  if (!is.numeric(periods) || length(periods) != 3 ||
      any(!is.finite(periods)) ||
      any(periods < 1) ||
      any(periods != floor(periods))) {
    stop("All periods must be positive integers")
  }

  # Calculate RSI using the existing rsi() function
  rsi_values <- rsi(data, period)

  # Remove initial NA values
  valid_rsi <- rsi_values[!is.na(rsi_values)]

  if (length(valid_rsi) < k_period + d_period - 1) {
    stop("Not enough RSI values for the selected periods")
  }

  # Normalize RSI between 0 and 1
  min_rsi <- min(valid_rsi)
  max_rsi <- max(valid_rsi)

  if (max_rsi == min_rsi) {
    k_values <- rep(0, length(valid_rsi))
  } else {
    k_values <- (valid_rsi - min_rsi) /
      (max_rsi - min_rsi)
  }

  # Calculate the %K line using SMA
  k_line <- sma(k_values, k_period)

  # Calculate the %D line using SMA
  d_line <- sma(k_line, d_period)

  # Return both indicator lines
  result <- list(
    k_line = k_line,
    d_line = d_line
  )

  return(result)
}
