MDepths <- read.csv("Depths.csv", header=TRUE)
X13<- MDepths[,13]
X13<-X13[!is.na(X13)]
as.data.frame(X13)
dat13<- data.frame(X13)
p13<-ggplot(dat13, aes(X13)) +
  labs(title = "Profile Nr.13", x = "Depths, m", y = "Density") +
  theme(
    plot.title = element_text(family = "Skia", face = 2, size = 10),
    panel.background=ggplot2::element_rect(fill = "gray91"),
    legend.position = c(.90, .90),
    legend.justification = c("right", "top"),
    legend.box.just = "right",
    legend.margin = margin(6, 6, 6, 6),
    legend.direction = "vertical",
    legend.background = element_blank(),
    legend.key.width = unit(.5,"cm"),
    legend.key.height = unit(.3,"cm"),
    legend.spacing = unit(.3,"cm"),
    legend.box.background = element_rect(colour = "honeydew4",size=0.2),
    legend.text = element_text(family = "Arial", colour="black", size=6, face=1),
    legend.title = element_blank(),
    strip.text.x = element_text(colour = "white"),
    panel.grid.major = element_line("white", size = 0.3),
    panel.grid.minor = element_line("white", size = 0.3, linetype = "dotted"),
    axis.text.x = element_text(family = "Arial", face = 3, color = "gray24",size = 6, angle = 15),
    axis.ticks.length=unit(.2,"cm"),
    axis.text.y = element_text(family = "Arial", face = 3, color = "gray24",size = 6, angle = 15),
    axis.line = element_line(colour = "darkblue", size = .3, linetype = "solid"),
    axis.title.y = element_text(margin = margin(t = 20, r = .3), family = "Times New Roman", face = 1, size = 6),
    axis.title.x = element_text(family = "Times New Roman", face = 1, size = 6,margin = margin(t = .2))) +
  scale_x_continuous(breaks = pretty(dat13$X13, n = 4), minor_breaks = seq(min(dat13$X13), max(dat13$X13), by = 500)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 4),labels = scales :: percent) +
  scale_fill_distiller(palette = "BrBG") +
  scale_color_manual(name = "Statistics:", values = c(median = "purple", mean = "green4",density = "blue", norm_dist = "black")) +
  geom_histogram(binwidth = 200,aes(fill = ..density..,x = dat13$X13,y = ..density..),color = "blue",size = .1) +
  stat_function(fun = dnorm, args = list(mean = mean(dat13$X13), sd = sd(dat13$X13)), lwd = 0.2, color = 'black') +
  stat_density(geom = "line", size = .3, aes(color = "density")) +
	     geom_vline(aes(color = "mean", xintercept = mean(X13)), lty = 4, size = .3) +
	     geom_vline(aes(color = "median", xintercept = median(X13)), lty = 2, size = .3)  +
	     geom_vline(aes(color = "norm_dist", xintercept = dnorm(X13)), lty = 2, size = .3)
p13
