### Set your working directory here----
# ex: setwd("C:/Users/myName/myDocuments")

### Set global options----
options(stringsAsFactors = FALSE)

### Load libraries----
library(ggplot2)
library(maps)
library(plyr)
library(grid)
library(maptools)
library(rgdal)
library(lubridate)
library(maps)
gpclibPermit()

### load addresses data----
source('./scripts/load.r')

### load custom functions data----
source('./scripts/functions.r')

### Create map
source('./scripts/analysis.r')