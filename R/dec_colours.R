#' Colour Palettes for December Holidays
#' This code is heavily based on the set up of the ochRe package: https://github.com/ropenscilabs/ochRe/blob/master/R/colors.R
#'
#'A collection of colour palettes for a range of December holidays. The list of available palettes is:
#' hanukkah_rainbow
#' hanukkah_simple
#' xmas
#' yulelog
#' kwanzaa
#' winter_solstice
#'
#'@examples
#'
#' # Make an x-y plot using the winter_solstice palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) + scale_colour_december() +
#'   theme_bw() + theme(aspect.ratio=1)
#'
#' # Make a histogram using the McCrea Collins Street palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_december(palette="hanukkah_rainbow")
#'
#' @export
december_palettes <- list(
  ## From Meri Makes Stuff on Tumblr https://meirmakesstuff.tumblr.com/post/190234482690/beyond-blue-and-white-a-jewish-holiday-resource
  ## Image address: https://64.media.tumblr.com/955c92e2de94c00083a7edeff33adea5/cfcebdd462167302-46/s1280x1920/8f1043f5c84ecfc94cedcfe4db1b6f196646adfa.jpg
  hanukkah_rainbow = c(
    "#B9000A", # International Orange Engineering
    "#37A839", # Green Pantone
    "#782F8F", # Eminence
    "#2092CD", # Blue NCS
    "#FE8B20", # Dark Orange
    "#F7DA6D", # Naples Yellow
    "#FB1265", # Paradise Pink
    "#EB570D", # Persimmon
    "#05102C"  # Oxford Blue
  ),

  ## Source: https://www.colourlovers.com/palette/1879017/Hanukkah
  hanukkah_simple = c(
    "#F2EBDB",
    "#9AB8C2",
    "#3A56A0",
    "#F2CD3C",
    "#DAAE4B",
    "#F2EBDB",
    "#9AB8C2",
    "#3A56A0"
  ),

  ## Red and Turquoise Christmas colour palette from artsyfarstylife.com
  ## https://artsyfartsylife.com/wp-content/uploads/2019/12/Modern-Red-Turquoise-Christmas-Color-Palette.jpg
  xmas = c(
    "#C8001C", # Lava
    "#7C0322", # Burgundy
    "#91C153", # Pistachio
    "#78DFE4", # Sky Blue Crayola
    "#609FA4"  # Cadet Blue
  ),

  # Buche de Noel, image by Dying for Chocolate
  # https://frenchly.us/wp-content/uploads/sites/9/2015/12/Buche-Miette.jpg
  yulelog = c(
      "#442A26", # Old Burgundy
      "#1A4B32", # British Racing Green
      "#AA8467", # Cafe Au Lait
      "#BD2C33", # Madder Lake
      "#7FAF7A", # Asparagus
      "#E1E0D9"  # Timberwolf
  ),

  # https://www.schemecolor.com/kwanzaa-flag-colors.php
  kwanzaa = c(
    "#E01022", # Medium Candy Apple Red
    "#111111", # Chinese Black
    "#137930"  # La Salle Green
  ),

  ## SOLSTICE WINTER COLOR PALETTE Allison J. Hart
  ## https://diariesofanessexgirl.com/solstice-winter-color-palette/
  winter_solstice = c(
    "#787878", # Steel
    "#90a8a8", # Mythical Blue
    "#7890a8", # Identity
    "#c0d8f0", # Light Blue Mist
    "#606048"  # Olive Court
  ))
