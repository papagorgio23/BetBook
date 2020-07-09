#' Probability of Winning Conversion to Odds (American Odds)
#'
#' @param prob Probability of winning a bet
#'
#' @return odds American Odds of that bet
#' @export
#'
#' @examples implied_odds(0.4)
#' @examples implied_odds(0.5238095)
implied_odds <- function(prob){
  ifelse(prob > 0.5, 
         odds <- prob / (1 - prob) * -100, 
         odds <- (1 - prob) / prob * 100)
  return(odds)
}