# совмещает множетсво графиков + их совместная легенда
library(ggpubr)
	figureCOMLEG<- ggarrange(
	p01, p02, p03, p04, p05, p06, p07, p08, p09, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25,
	labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"), 
	ncol = 4, nrow = 7, 
	font.label = list(size = 12, color = "black", face = "bold", family="Times New Roman"), 
	common.legend = TRUE, 
	legend = "bottom")

figure_all_COMLEG<- annotate_figure(
    figureCOMLEG,
    top = text_grob("Mariana Trench Bathymetry: Histograms of Depth Distribution", color = "lightsteelblue4", face = "bold", size = 10),
    bottom = text_grob("Data processing: \n R, QGIS", color = "blue", hjust = 1, x = 1, face = "italic", size = 8),
    left = text_grob("Figure arranged using R, ggpubr", color = "slategray4", size = 8, rot = 90),
    right = text_grob("1000-km length profiles", color = "slategray4", size = 8, rot = 270),
    fig.lab = "Profiles 1-25",
      fig.lab.face = "bold",
      fig.lab.size = 8,
      fig.lab.pos = "bottom.left")
figure_all_COMLEG

ggsave("figure_all_COMLEG.pdf", device = cairo_pdf, fallback_resolution = 300, width = 210, height = 297, units = "mm")
