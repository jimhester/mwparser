#'@title Read Wikitext
#'
#'@description Initially reads and parses a pile of wikitext,
#'turning it into an object that can have elements extracted from it.
#'
#'@param wikitext a pile of wikitext, as a string.
#'
#'@param skip_styles whether to skip style tags, which (very
#'occasionally) cause parsing problems. \code{FALSE} by default.
#'
#'@examples
#'\dontrun{
#'# Simple example
#'wt <- "==this is a header==\n with {{a|template}}"
#'parsed <- parse_wikitext(wt)
#'}
#'@export
parse_wikitext <- function(wikitext, skip_styles = FALSE){
  return(mwp_inst$parse(wikitext, skip_style_tags = skip_styles))
}

