### Create custom function to plot geocoded data
myMap <- function(df, points) {
  myFont <- 'serif'
  myTitle <- 'Walmart stores: Expansion between 1962 and 2005\n'
  myPalette <- c('#1F78B4', '#FF0066') #'#1B9E77'
  mySize <- c(0.1, 1)
  myAlpha <- c(.4, 0.7)

  p <- ggplot()
  p <- p + geom_polygon(data = df, aes(x = long, y = lat, group = group), colour="black", fill="#F7F3F3") # Plot map
  p <- p + geom_point(data = points, aes(x = long, y = lat, colour = as.factor(new), alpha = as.factor(new), na.omit = TRUE)) # plot points
  p <- p + geom_text(data=geocSummary, aes(x=-118.5, y=29.5, label = New), family = myFont, colour="black", inherit.aes=FALSE, parse=FALSE) # Add text to each facet
  p <- p + geom_text(data=geocSummary, aes(x=-115, y=27.5, label = Existing), family = myFont, colour="black", inherit.aes=FALSE, parse=FALSE) # Add text to each facet
  p <- p + theme_bw() # Remove grey background
  p <- p + theme(panel.border = element_blank(), axis.line = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank())	# Remove fridlines
  p <- p + scale_size_manual(values = mySize) # Change sizes
  p <- p + scale_colour_manual(values = myPalette, name="", labels= c('Existing store', 'New store'), guide = guide_legend(label.position = "bottom")) # Change colors
  p <- p + scale_alpha_manual(values = myAlpha, guide = 'none') # Control transparency of points
  p <- p + xlab("") # Remove x title
  p <- p + ylab("") # Remove y title
  p <- p + scale_x_continuous(breaks= NULL) # Remove tick mark on x axis
  p <- p + scale_y_continuous(breaks= NULL) # Remove tick mark on y axis
  p <- p + theme(panel.border = element_rect(fill = NA, colour = NA))# remove charts frame lines
  p <- p + theme(legend.key.size = unit(2, "cm")) # Set legend key size
  p <- p + theme(legend.text = element_text(family = myFont, size = 18)) # Control legend label font
  p <- p + theme(strip.text.x = element_text(family = myFont, size=18, face = "bold")) # control strip text font
  p <- p + theme(strip.background = element_rect(colour=NA,  fill=NA)) # remove grey background from title area
  p <- p + theme(legend.key = element_blank()) # Remove legend key borders
  p <- p + theme(plot.title = element_text(family = myFont, face="bold.italic", size = 30))# Control plot title font
  p <- p + ggtitle(myTitle) # Add title to graph
  p
}

