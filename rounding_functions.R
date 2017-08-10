# The idea is to remove leading zeros, while keeping the negative (if present), to a specified number of decimal places

rounding.1dp <- function(val) { 
  sub("^(-?)0.", "\\1.", sprintf("%.1f", val)) 
}

rounding.2dp <- function(val) { 
  sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) 
}


M.SD.0dp <- function(val) {
  paste(round(mean(val, na.rm = TRUE)), " (", 
        round(sd(val, na.rm = TRUE)), ")", sep = "")}


M.SD.1dp <- function(val) {
  paste(sub("^(-?)0.", "\\1.", sprintf("%.1f", mean(val, na.rm = TRUE)))," (",
        sub("^(-?)0.", "\\1.", sprintf("%.1f", sd(val, na.rm = TRUE))),")", sep = "")}


M.SD.2dp <- function(val) {
  paste(sub("^(-?)0.", "\\1.", sprintf("%.2f", mean(val, na.rm = TRUE)))," (",
        sub("^(-?)0.", "\\1.", sprintf("%.2f", sd(val, na.rm = TRUE))),")", sep = "")}