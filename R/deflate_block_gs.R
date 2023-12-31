#' Deflation via global scores
#'
#' @description Removes data from a data frame in the direction of a given
#' global scores vector.
#'
#' @details Subtracts the component of each column in the direction of a given
#' global scores vector to yield a `deflated' data matrix.
#'
#' @param df a data frame in "sample" x "variable" format
#' @param gs a global scores vector in sample space
#' @return the deflated data frame
#' @examples
#' df <- matrix(rbinom(15, 1, prob = 0.3), ncol = 3)
#' global_score <- rbinom(5, 1, prob = 0.3)
#' deflated_data <- deflate_block_gs(df, global_score)
#'
#' @export
deflate_block_gs <- function(df, gs) {
    normed_gs <- gs / norm(gs, type = "2")
    df <- df - tcrossprod(normed_gs) %*% as.matrix(df)
    return(df)
}
