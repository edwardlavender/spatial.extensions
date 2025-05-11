#' @title `qread` and `qsave` routines for `terra`
#' @description These functions provide [`qs::qread()`] and [`qs::qsave()`] wrappers for `terra` objects.
#' @param x,file,... Arguments.
#' @name qs-terra
NULL

#' @rdname qs-terra
#' @export

qreadvect <- function(...) {
  rlang::check_installed("qs")
  qs::qread(...) |> terra::vect()
}

#' @rdname qs-terra
#' @export

qreadext <- function(...) {
  rlang::check_installed("qs")
  qs::qread(...) |> terra::ext()
}

#' @rdname qs-terra
#' @export

qsavevect <- function(x, file, ...) {
  rlang::check_installed(c("qs", "sf"))
  x |> 
    sf::st_as_sf() |> 
    qs::qsave(file = file, ...)
}

#' @rdname qs-terra
#' @export

qsaveext <- function(x, file, ...) {
  rlang::check_installed("qs")
  c(x[1], x[2], x[3], x[4]) |> 
    qs::qsave(file = file, ...)
}
