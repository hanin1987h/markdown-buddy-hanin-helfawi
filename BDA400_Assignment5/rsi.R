
# Relative Strength Index (RSI)
# BDA400 - Assignment 5

rsi <- function(data, period) {

  # Validate input data
  if (!is.numeric(data) || length(data) == 0 ||
      any(!is.finite(data))) {
    stop("Data must contain finite numeric values")
  }

  # Validate period
  if (!is.numeric(period) || length(period) != 1 ||
      !is.finite(period) || period < 1 ||
      period != floor(period)) {
    stop("Period must be a positive integer")
  }

  if (length(data) <= period) {
    stop("Data length must be greater than period")
  }

  # Calculate differences between consecutive prices
  diff_values <- diff(data)

  # Separate gains and losses
  gains <- pmax(diff_values, 0)
  losses <- pmax(-diff_values, 0)

  # Calculate initial average gains and losses
  avg_gain <- sum(gains[1:period]) / period
  avg_loss <- sum(losses[1:period]) / period

  # Initialize RSI vector
  rsi_values <- rep(NA_real_, length(data))

  # Calculate first RSI value
  if (avg_loss == 0) {
    rsi_values[period + 1] <- if (avg_gain == 0) 50 else 100
  } else {
    rs <- avg_gain / avg_loss
    rsi_values[period + 1] <- 100 - (100 / (1 + rs))
  }

  # Apply Wilder's smoothing for subsequent values
  if (length(data) > period + 1) {
    for (i in (period + 2):length(data)) {

      avg_gain <- (avg_gain * (period - 1) +
                     gains[i - 1]) / period

      avg_loss <- (avg_loss * (period - 1) +
                     losses[i - 1]) / period

      if (avg_loss == 0) {
        rsi_values[i] <- if (avg_gain == 0) 50 else 100
      } else {
        rs <- avg_gain / avg_loss
        rsi_values[i] <- 100 - (100 / (1 + rs))
      }
    }
  }

  return(rsi_values)
}
