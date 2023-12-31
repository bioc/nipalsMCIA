% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis_load_ord.R
\name{vis_load_ord}
\alias{vis_load_ord}
\title{Visualize ranked loadings}
\usage{
vis_load_ord(gl_f_ord, omic_name, colors_omics, n_feat = 15)
}
\arguments{
\item{gl_f_ord}{Ranked loading dataframe output from ord_loadings() function}

\item{omic_name}{name of the given omic dataset}

\item{colors_omics}{named list of colors associated with omics,
output of get_colors() function}

\item{n_feat}{number of features to visualize}
}
\value{
Plot in features for a factor by rank
}
\description{
Visualize a scree plot of loadings recovered from
nipalsMCIA() output loadings matrix ranked using the
ord_loadings() functions
}
\examples{
data(NCI60)
data_blocks_mae <- simple_mae(data_blocks,row_format="sample",
                              colData=metadata_NCI60)
mcia_results <- nipals_multiblock(data_blocks_mae, num_PCs = 10,
                                  plots = "none", tol = 1e-12)
all_pos_1 <- ord_loadings(mcia_out = mcia_results, omic = "all",
    absolute = FALSE, descending = TRUE, factor = 1)
colors_omics <- get_colors(mcia_results)
vis_load_ord(all_pos_1, colors_omics = colors_omics)
}
