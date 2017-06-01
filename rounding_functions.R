rounding.1dp <- function(val) { 
  sub("^(-?)0.", "\\1.", sprintf("%.1f", val)) 
}

rounding.2dp <- function(val) { 
  sub("^(-?)0.", "\\1.", sprintf("%.2f", val)) 
}