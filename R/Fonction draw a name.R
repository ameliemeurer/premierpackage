#' Title
#'
#' @param the_name : give a name
#' @param the_sex : give the sex
#'
#' @returnunction which can plot the popularity of babynames (using prenoms) in times use the_name and the_sex as arguments.
#' @export
#' @import prenoms ggplot2 dplyr
#'
#' @examples
draw_a_name <- function(the_name = n, the_sex= s) {
  prenoms_by_year <- prenoms::prenoms %>%  filter (name == the_name, sex == the_sex) %>% group_by(year)%>% summarise(n=sum(n))
  ggplot(data=prenoms_by_year,
         aes( x = year, y = n )) +
    geom_line()
}
