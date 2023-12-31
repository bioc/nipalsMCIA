% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\docType{class}
\name{NipalsResult-class}
\alias{NipalsResult-class}
\alias{NipalsResult}
\title{An S4 class to contain results computed with `nipals_multiblock()`}
\value{
A NipalsResult object.
}
\description{
An S4 class to contain results computed with `nipals_multiblock()`
}
\section{Slots}{

\describe{
\item{\code{global_scores}}{A matrix containing global scores as columns.}

\item{\code{global_loadings}}{A matrix containing global loadings as columns.}

\item{\code{block_score_weights}}{A matrix containing block weights as columns.}

\item{\code{block_scores}}{A list of matrices. Each matrix contains the scores
as columns for a given block.}

\item{\code{block_loadings}}{A list of matrices. Each matrix contains the
loadings as columns for a given block.}

\item{\code{eigvals}}{A list of singular values of the data matrix at each
deflation step.}

\item{\code{col_preproc_method}}{character for the column-level preprocessing
method used. See `col_preproc()`.}

\item{\code{block_preproc_method}}{character for the block-level
preprocessing method used. See `block_preproc()`.}

\item{\code{block_variances}}{A list of variances for each block.}

\item{\code{metadata}}{A data frame of metadata originally passed into
`nipals_multiblock()`.}
}}

