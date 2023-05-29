source("C:/Users/tjoep/Desktop/Projects/R/CourseraProj2/downloadArchive.R")
NEI <- readRDS("summarySCC_PM25.rds")
baltimoreNEI <- NEI[NEI$fips=="24510",]
aggTotalsBaltimore <- aggregate(Emissions ~ year, baltimoreNEI,sum)
png("plot2.png",width=480,height=480,units="px",bg="transparent")

barplot(
  aggTotalsBaltimore$Emissions,
  names.arg=aggTotalsBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Tons)",
  main="Total PM2.5 Emissions From all Baltimore City Sources"
)
dev.off()