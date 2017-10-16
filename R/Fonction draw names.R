#' Title
#'
#' @param NameVec give a vector with names
#'
#' @return plot simultaneously the popularity of more than one name
#' @export
#' @import prenoms dplyr ggplot2 assertthat
#'
#' @examples draw_names (c("Diane", "Vincent"))
draw_names <- function(NameVec) {
  assert_that(is.character(NameVec))
  prenoms_by_year <- prenoms::prenoms %>%  filter (name %in% NameVec) %>% group_by(year, name)%>% summarise(n=sum(n))
  ggplot(data=prenoms_by_year,
         aes( x = year, y = n, color = name )) +
    geom_line()+
    ylab("Total")

}
