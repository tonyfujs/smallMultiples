### Load data file from "./data/filename" directory
#addresses <- read.csv('./data/store_openings.csv', header=TRUE, sep=",")
geoc <- read.csv('./data/geoc.csv', header=TRUE, sep=",")
load('./data/geocCumulative.rda')
load('./data/geocSummary.rda')