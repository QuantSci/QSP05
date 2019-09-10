

library(tidyverse)
library(fs)

# Need to modify for linux users
window_machine <- ifelse(grepl("windows", Sys.info()['sysname'], ignore.case=T), 1, 0)
if(window_machine==1) {
  network_start <- path("R:")
} else {
  network_start <- path("/Volumes", "Research")
}
rm(window_machine)

networkpath <- path(network_start, "BM_QuantitativeSciencesPrg", "QSP-05", "DATA")

b2b <- read_csv(path(networkpath, "btb.csv"))

