cat("
====================================
# On www.isleroyalewolf.org/data/data/home.html the file isleroyale graph data 28Dec2011.xlsx contains population data from wolves and moose. The information in this file is extracted and saved in the file 01wolvesmoose.csv. Download and read the file 01wolvesmoose.csv from the STA120 course page in your local R session. For the Access grading, the file is already included in the resources folder, and loaded correctly.

# Create a boxplot containing both Moose and Wolf data:

# Make sure you have the order of the Moose and Wolf data set correctly
# Add the title: Moose & Wolf Boxplot
# Create a QQ-plot for Moose and a QQ-plot for Wolf:

# Set a title like: QQ-plot Moose and QQ-plot Wolf
# Add a red QQ-line
# Create a line plot of Wolf on Year and of Moose on Year:

# Use a title like Wolf Population Over Time
# Set axis labels as Year and Wolf Count or Moose Count respectively
# Create a scatterplot of Wolf on Moose:

# Again, set axis labels as Moose and Wolf
# Specify the title: Wolf vs. Moose
# For the legend, use the same three colors as in the plot function
# The legend should be at the top right of the plot
# You should get 6 plots. Use par( mfrow=c(2,3)) to plot them in one image.

# An example of the expected output is included in the resource panel.

# Do not change the png() and dev() functions
====================================
")

png(file="solution_01_02.png")

dat <- read.csv("week_01/wolvesmoose.csv")
par(mfrow = c(2,3))

# Boxplot for Moose and Wolf
boxplot(dat[, c("Moose", "Wolf")], names = c("Moose", "Wolf"), main = "Moose & Wolf Boxplot")

# QQ-plots for Moose and Wolf
qqnorm(dat$Moose, main = "Q-Q Plot for Moose")
qqline(dat$Moose, col="red", lwd = 2)

qqnorm(dat$Wolf, main = "Q-Q Plot for Wolf")
qqline(dat$Wolf, col="red", lwd = 2)

# Line plots over time
plot(dat$Year, dat$Wolf, type = "l", col = "black", main = "Wolf Population Over Time", xlab = "Year", ylab = "Wolf Count")
plot(dat$Year, dat$Moose, type = "l", col = "black", main = "Moose Population Over Time", xlab = "Year", ylab = "Moose Count")

# Scatter plot of Wolf vs. Moose with colors
colors <- rep(c(1, 2, 3), times = c(2, 2, 3))
plot(dat$Moose, dat$Wolf, col = colors, pch = 16, main = "Wolf vs. Moose", xlab = "Moose", ylab = "Wolf")
legend("topright", legend = c("1959-1980", "1981-1996", "1997-2011"), col = c(1, 2, 3), pch = 16, bty = "n")

dev.off()