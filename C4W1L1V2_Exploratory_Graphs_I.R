# Annual average PM2.5 averaged over the period 2008 through 2010

pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric","character","factor","numeric","numeric"))
head(pollution)

# Q. Do any states exceeds the standard of 12 mu g/m^3

# Simple Summaries of Data

# I. One Dimension
  # 1. Five Number Summary
  # 2. Box plot
  # 3. Histograms
  # 4. Density Plot
  # 5. Bar Plot

  # 1. Five Number Summary
  summary(pollution$pm25)
  
  # 2. Box Plot
  boxplot(pollution$pm25, col = "blue")
  
    # Overlaying Feature
  
    boxplot(pollution$pm25, col = "blue")
    abline(h=12)
  
  
    boxplot(pollution$pm25, col = "blue")
    abline(h=c(11,12,13))
  
  # 3. Histograms
  
  hist(pollution$pm25, col = "green")
  rug(pollution$pm25)
  
    # Histogram with change breaks
  
    hist(pollution$pm25, col = "green", breaks = 100)
    rug(pollution$pm25)
  
    # Overlaying Feature
  
    hist(pollution$pm25, col = "green")
    abline(v = 12,lwd = 2)
    abline(v = median(pollution$pm25), col = "magenta", lwd = 4)
  
  # 4. Bar plot
    
  barplot(table(pollution$region), col = "wheat", main = "Number of Counties in Each Region")