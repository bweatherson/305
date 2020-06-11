setwd("~/Documents/305/slides")
files <- list.files(pattern = "[.]Rmd$")
for (f in files) rmarkdown::render(f)
