#' Title
#'
#' @param dataset Give a data set
#' @param filename Give its file names
#' @param row.names
#' @param ...
#'
#' @return saves a Data.frame in a csv file and also outputs the full path of where the csv has been saved.
#' @export
#'
#' @examples
#'
save_as_csv <- function(dataset, filename, row.names = FALSE, ...) {
  assert_that(has_extension(filename,"csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))
  write.csv2(x = dataset, file = filename, row.names = row.names, ...)
  invisible(normalizePath(filename))
}
