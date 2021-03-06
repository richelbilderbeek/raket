#' Plot violin plot
#' @param df_long data frame in the long form
#' @param pdf_filename name of the PDF with the plot
#' @export
create_fig_1 <- function(
  df_long = utils::read.csv("result_long.csv"),
  pdf_filename = tempfile(fileext = ".pdf")
) {
  # Satisfy R CMD check
  scr <- NULL; rm(scr) # nolint, fixes warning: no visible binding for global variable
  sampling_method <- NULL; rm(sampling_method) # nolint, fixes warning: no visible binding for global variable
  erg <- NULL; rm(erg) # nolint, fixes warning: no visible binding for global variable
  sirg <- NULL; rm(sirg) # nolint, fixes warning: no visible binding for global variable
  nltt <- NULL; rm(nltt) # nolint, fixes warning: no visible binding for global variable
  if (all(df_long$sampling_method == "random")) {
    # The general dataset
    plot <- ggplot2::ggplot(
      data = df_long,
      ggplot2::aes(
        x = as.factor(scr),
        y = nltt
      )
    ) +
      ggplot2::geom_violin() +
      ggplot2::facet_grid(
        erg ~ sirg,
        drop = FALSE
      ) +
      ggplot2::ggtitle(
        paste0(
          "The general data set.\n",
          "columns: speciation initiation rates\n",
          "rows: extinction rates"
        )
      )
  } else {
    # Measure the effect of sampling
    plot <- ggplot2::ggplot(
      data = df_long,
      ggplot2::aes(
        x = as.factor(scr),
        y = nltt,
        fill = as.factor(sampling_method)
      )
    ) +
      ggplot2::geom_violin() +
      ggplot2::facet_grid(
        erg ~ sirg,
        drop = FALSE
      ) +
      ggplot2::ggtitle(
        paste0(
          "The effect of sampling.\n",
          "columns: speciation initiation rates\n",
          "rows: extinction rates"
        )
      )
  }
  ggplot2::ggsave(
    filename = pdf_filename,
    plot = plot,
    device = "pdf",
    width = 21,
    height = 29.7,
    units = "cm"
  )
  plot
}
