#' Implied Probability of Winning (American Odds)
#'
#' @param odds American Odds of the bet
#'
#' @return Implied probability of winning or the "Break Even" percentage
#' @export
#'
#' @examples implied_prob(-150)
#' @examples implied_prob(360)
implied_prob <- function(odds){
  ifelse(odds > 0, 
         imp_prob <- 100 / (odds + 100), 
         imp_prob <- -odds / (-odds + 100))
  return(imp_prob)
}