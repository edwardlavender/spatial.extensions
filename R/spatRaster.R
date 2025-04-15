#' @title `SpatRaster` routines
#' @description These functions provide `SpatRaster` routines. 
#' @param x,filename,... Arguments.
#' @name spat
NULL

#' @rdname spat
#' @export

spatNormalise <- function(x) {
  x / terra::global(x, "sum", na.rm = TRUE)[1, 1]
}

#' @rdname spat
#' @export

overwriteRaster <- function(x, filename, ...) {
  terra::writeRaster(x, filename, overwrite = TRUE, ...)
}