#' december palettes with ramped colours
#' This code is heavily based on the set up of the ochRe package: https://github.com/ropenscilabs/ochRe/blob/master/R/colors.R
#'
#' @param palette Choose from 'december_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(scales)
#' show_col(dec_pal()(10))
#'
#' filled.contour(volcano,color.palette = dec_pal(), asp=1)
#'
#' @export
dec_pal <- function(palette="winter_solstice", alpha = 1, reverse = FALSE) {
  pal <- december_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_december
#'
#' @param palette Choose from 'december_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_december(palette="xmas")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_december(palette="xmas", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_december(palette="kwanzaa")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_december()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_december <- function(..., palette="winter_solstice",
                              discrete = TRUE, alpha = 1, reverse = FALSE) {
  if (discrete) {
    discrete_scale("colour", "december", palette=dec_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_color_gradientn(colours = dec_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}

#' @rdname scale_color_december
#' @export
scale_colour_december <- scale_color_december

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'december_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams dec_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_december <- function(..., palette="winter_solstice",
                             discrete = TRUE, alpha=1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "dec", palette=dec_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_fill_gradientn(colours = dec_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}
