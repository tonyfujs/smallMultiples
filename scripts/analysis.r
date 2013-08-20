#########################################################################
###                       load us map data                            ###
#########################################################################
# Generate a dataset containing geocoded data of US map
us <- map_data("state") 
# Generate ONE map using the custom myMap function (in function.r file)
p <- myMap(us, geocCumulative)
# Generate small multiples version of the map
p <- p + facet_wrap( ~ year )
# print chart in interactive mode
p
# Save chart as a .png file in the following directory: "./output/map.png"
ggsave(filename = './output/map.png', width = 65, height = 40, units = 'cm')


