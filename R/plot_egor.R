#' Plotting *egor* objects
#' 
#' *egor* Objects can be plotted as *egographs* or *egograms*. By
#' default networks of the four first egos are plotted.
#' @param x An _egor_ object.
#' @param ego_no Ego row number.
#' @param x_dim Number of ego networks to plot horizontally.
#' @param y_dim Number of ego networks to plot vertically
#' @param venn_var Name (character) of alter column.
#' @param pie_var Name (character) of alter column.
#' @param vertex_size_var Name (__character__) of alter column.
#' @param vertex_color_var Name (__character__) of alter column.
#' @param vertex_color_palette Name (__character__) of color palette.
#' @param vertex_color_legend_label Character.
#' @param vertex_label_var Name (__character__) of alter column.
#' @param edge_width_var Name (__character__) of aatie column.
#' @param edge_color_var Name (__character__) of aatie column.
#' @param edge_color_palette Name (__character__) of color palette.
#' @param highlight_box_col_var Name (__character__) of ego column.
#' @param highlight_box_col_palette Name (__character__) of color palette.
#' @param res_disp_vars Name (__character__) of ego column.
#' @param vertex_zoom Numeric.
#' @param edge_zoom Numeric.
#' @param font_size Numeric.
#' @param venn_colors Vector of colors.
#' @param show_venn_labels Logical.
#' @param include_ego Logical.
#' @param type Character. Either "egograph" or "egogram".
# @param layout `Matrix` of x and y coordinates for nodes. Defaults to 
# Fruchterman Rheingold layout algorithm.
#' @param ... Additional arguments forwared to plot.igraph.
#' @details For type eqals "egograph" ego networks are plotted using 

#' @export
plot_egor <- function(x, ego_no = 1, x_dim = 2, y_dim = 2, ..., type = c("egograph", "egogram")) {
  if (type[1] == "egograph") {
    plot_ego_graphs(x, ego_no = ego_no, x_dim = x_dim, y_dim = y_dim, ...)
  } else if (type[1] == "egogram") {
    plot_egograms(x, ego_no = ego_no, x_dim = x_dim, y_dim = y_dim, ...)
  }
}

#' @rdname plot_egor
#' @method plot egor
#' @export
plot.egor <- function(x, ...) {
  plot_egor(x, ...)
}
