library(cowplot)
figure <-plot_grid(
p01 + theme(legend.position="none"),
p02 + theme(legend.position="none"),
p03 + theme(legend.position="none"),
p04 + theme(legend.position="none"),
p05 + theme(legend.position="none"),
p06 + theme(legend.position="none"),
p07 + theme(legend.position="none"),
p08 + theme(legend.position="none"),
p09 + theme(legend.position="none"),
p10 + theme(legend.position="none"),
p11 + theme(legend.position="none"),
p12 + theme(legend.position="none"),
p13 + theme(legend.position="none"),
p14 + theme(legend.position="none"),
p15 + theme(legend.position="none"),
p16 + theme(legend.position="none"),
p17 + theme(legend.position="none"),
p18 + theme(legend.position="none"),
p19 + theme(legend.position="none"),
p20 + theme(legend.position="none"),
p21 + theme(legend.position="none"),
p22 + theme(legend.position="none"),
p23 + theme(legend.position="none"),
p24 + theme(legend.position="none"),
p25 + theme(legend.position="none"),
ncol = 4, nrow = 7)

figure_all<- annotate_figure(
    figure,
    top = text_grob("Mariana Trench Bathymetry: Histograms of Depth Distribution", color = "lightsteelblue4", face = "bold", size = 10),
    bottom = text_grob("Data processing: \n R, QGIS", color = "blue", hjust = 1, x = 1, face = "italic", size = 8),
    left = text_grob("Figure arranged using R, ggpubr", color = "slategray4", size = 8, rot = 90),
    right = text_grob("1000-km length profiles", color = "slategray4", size = 8, rot = 270),
    fig.lab = "Profiles 1-25",
      fig.lab.face = "bold",
      fig.lab.size = 8,
      fig.lab.pos = "bottom.left")

ggsave("figure_all.pdf", device = cairo_pdf, fallback_resolution = 300, width = 210, height = 297, units = "mm")