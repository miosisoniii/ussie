#' Makes a df for league data
#'
#'Given a league-play data frame from {engsoccer}, returns a tibble with
#'standardised column-names and types, e.g. `date` is a `Date`.
#'
#' @param data_engsoc dataframe from engsoccerdata package
#' @param country country `character` scalar, specifies the league.
#'
#' @return dataframe, a tibble with columns `country`, `date`, `season`, `tier`, `home`,
#'    `visitor`, `goals_home`, `goals_visitor`.
#' @export
#'
#' @examples
#' uss_make_matches(engsoccerdata::italy, "Italy")
uss_make_matches <- function(data_engsoc, country) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      country = as.character(country),
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}


