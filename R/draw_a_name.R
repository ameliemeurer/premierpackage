#' Title
#'
#' @param the_name : give a name
#' @param the_sex : give the sex
#'
#' @return which can plot the popularity of babynames (using prenoms) in times use the_name and the_sex as arguments.
#' @export
#' @import prenoms ggplot2 dplyr assertthat
#'
#' @examples draw_a_name(the_name= "Diane", the_sex = "F")
draw_a_name <- function(the_name = n, the_sex= s) {
  assert_that(is.character(the_name))
  assert_that(is.character(the_sex))
  prenoms_by_year <- prenoms::prenoms %>%  filter (name == the_name, sex == the_sex) %>% group_by(year)%>% summarise(n=sum(n))
  ggplot(data=prenoms_by_year,
         aes( x = year, y = n )) +
    geom_line()
}
