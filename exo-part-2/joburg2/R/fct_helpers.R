head_run <- function(nrow = 10){
  head(run, nrow)
}

filter_run <- function(modality){
  dplyr::filter(run, Title == modality)
}
