setwd("~/Documents/305/slides")
files <- list.files(pattern = "[.]Rmd$")
for (f in files[29:66]) rmarkdown::render(f)
