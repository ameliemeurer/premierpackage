#' Title
#'
#' @param file enter a file name
#'
#' @return import ALL sheets from an xlsx file
#' @export
#' @import readxl
#'
#' @examples
#' \dontrun{
#' read_excel_multi("titanic_train.csv")
#' }
read_excel_multi <- function(file) {
  assert_that(has_extension(file, "xlsx"))
  assert_that(is.readable(file))
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
