#' Title
#'
#' @param file enter a file name
#'
#' @returnfunction which import ALL sheets from an xlsx file
#' @export
#' @import readxl
#'
#' @examples
#' \dontrun{
#' read_excel_multi("titanic_train.csv")
#' }
read_excel_multi <- function(file) {
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
