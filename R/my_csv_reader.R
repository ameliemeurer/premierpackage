#' Title
#'
#' @param folder Put the name of a folder
#'
#' @return Takes all the csv from a folder Import them and put them in a list Returns the list
#' @export
#'
#' @examples my_csv_reader("foldername")
my_csv_reader <- function(folder){
  l <- list.files(path = folder, pattern = ".*csv$", full.names = TRUE)
  result <- lapply(l,read.csv2)
  return(result)
}
