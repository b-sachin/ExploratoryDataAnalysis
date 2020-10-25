# 2-Dimensional Graphs
pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric","character","factor","numeric","numeric"))
head(pollution)

  # 1. Multiple Boxplots

  boxplot(pm25 ~ region,data = pollution, col = "red")
  
  # 2. Multiple Histograms
  
  par(mfrow = c(2,1),mar = c(4,4,2,1) )
  hist(subset(pollution, region == "east")$pm25, col = "green")
  hist(subset(pollution, region == "west")$pm25, col = "green")
  
  # 3. Scatterplot
  
  with(pollution, plot(latitude, pm25))
  abline(h = 12, lwd = 2, lty = 2)
  
  # 3.1 Scatterplot - Using Color
  with(pollution, plot(latitude, pm25, col = region))
  abline(h = 12, lwd = 2, lty = 2)
   
  # 3.2 Multiple Scatterplots
  par(mfrow = c(1,2),mar = c(5,4,2,1) )  
  with(subset(pollution, region == "west"), plot(latitude, pm25, main = "west"))
  with(subset(pollution, region =="east"), plot(latitude, pm25, main="East"))
  