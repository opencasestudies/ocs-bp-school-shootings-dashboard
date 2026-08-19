library(rmarkdown)

rmarkdown::run(
  "index.Rmd",
  shiny_args = list(port = 3838, host = "0.0.0.0")
)
