#' CountryPopulation
#'
#' This function produces a population over time bar graph for a specific country
#' that is in the WorldPopulation dataset.
#'
#' @param Country.Name country within the WorldPopulation dataset
#'
#' @return A population vs year bar graph for the specific country that is input into the function.
#'
#' @examples
#' CountryPopulation("South Africa")
#' CountryPopulation("Dominica")
#' CountryPopulation("Finland")
#'
#' @export

CountryPopulation <- function(Country.Name) {
  WorldPopulation.2 <- WorldPopulation %>%
    pivot_longer(cols = -Country, names_to = "Year", values_to = "Population")
  WorldPopulation.data <- WorldPopulation.2 %>%
    filter(Country == Country.Name)

  if (nrow(WorldPopulation.data) == 0) {
    stop("Country not found")
  } else {
  plot <- ggplot(WorldPopulation.data, aes(x = Year, y = Population)) +
    geom_bar(stat = "identity", position = "dodge") +
    labs(title = paste("Population over time for", Country.Name), x = "Year", y = "Population in thousands") +
    theme(axis.text.x = element_text(size = rel(0.6), angle = 90)) +
    theme(axis.text.y = element_text(size = rel(0.6)))+
    theme(plot.title = element_text(size = 8))

  return(plot)
  }
}
