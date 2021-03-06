#' Sportsbook Hold Percentage
#'
#' @param lines List of lines for a given bet (-115, -105)
#'
#' @return Hold percent
#' @export
#'
#' @examples hold_calc(-110, -110)
#' @examples hold_calc(285, -122, 258)
hold_calc <- function(...){
  lines <- c(...)
  imp_probs <- sapply(lines, implied_prob)
  hold <- sum(imp_probs) - 1
  return(hold)
}