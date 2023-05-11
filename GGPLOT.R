# Data Analytics.
# Notes & Lecture by Akhona Njeje,Date 11 May 2023.
# Advance Data Analysis & Visualisation with GGPLOT2


install.packages('ggplot2')
install.packages('ggplot2movies')
library(ggplot2)    # For cheat sheet just google ggplot2 cheat sheet.
library(ggplot2movies)

# Histogram & Geometries.

colnames(movies)
head(movies)

plot = ggplot(movies, aes(x=rating))
plot + geom_histogram()

   # Lets increase the thickness by 0.1 in our bar ratings & add colour.
print(plot + geom_histogram(bindwidth=0.1,color='green',fill='red'))

   # Lets add lables & titles to our Hist.
plot2 = plot + geom_histogram(bindwidth=0.1,color='green',fill='red')
plot3 = plot2 + xlab('Movie Ratings by Ak') + ylab('Count by Ak')
print(plot3)

print(plot3 + ggtitle("My Title:Akhona Top5 Movies"))



# Scatter plots for X,Y & Z.

library(ggplot2)
df = mtcars
head(mtcars)
 
   # DATA & AESTHETICS.
plt = ggplot(df, aes(x=wt,y=mpg))
print(plt + geom_point(size=7,alpha=0.5))

   # Add color.
print(plt + geom_point(aes((shape=factor(cyl)),color=factor(cyl)), size=5))


# Barplots & Its Geometries.

library(ggplot2)
df = mpg
head(mpg)   # Column Class vs 

plt = ggplot(df, aes(x=class))
print(plt + geom_bar())   # Visualisation = Bar Plots.

print(plt + geom_bar(aes(fill=drv)))   # Stacked Barplots.


# Boxplots aka Box & Wiskers.

library(ggplot2)
df = mtcars
head(mtcars)   # 

plt = ggplot(df, aes(x=factor(cyl), y=mpg))
print(plt + geom_boxplot())   # Boxplots provide rich stats info & we can easily detect outliers.
print(plt + geom_boxplot(aes(fill=factor(cyl))))   # Each boxplot is colored unique.


# 2 Variable Plotting.

library(ggplot2)
library(ggplot2movies)

plot = ggplot(movies, aes(x=year, y=rating))
print(plot + geom_bin2d())

   # Change the colour of the heatmap.Use a fill Grdient().
plot2 = plot + geom_bin2d() + scale_fill_gradient(high ='green',low ='blue')
print(plot2)


# Coordinates & Faceting.

library(ggplot2)
plt = ggplot(mpg,aes(x=displ,y=hwy)) + geom_point()
plt

plt + coord_cartesian(xlim=c(1,4),ylim = c(15,30))

   # Cylinder info.
plot = ggplot(mpg,aes(x=disp,y=hwy)) + geom_point()
print(plot + facet_grid(drv ~ .))   # E.

   # Themes.
library(ggplot2)

theme_set(theme_minimal())
plt = ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
print(plt)   # Scatterplot wt vs mpg.
print(plt + theme_linedraw())   # Scatter has gridlines.
print(plt + theme_void())    # Scatter has no grid;lines.
print(plt + theme_dark())   # Theme has a dark backround.
print(plt+theme_get())



# Training Excercise & Problems.

# Load Libraries.
library(ggplot2)
library(ggthemes)
head(mpg)


   # Q1, Create a histogram of hwy mpg values.
library(ggplot2)
head(mpg)

ggplot(mpg,aes(x=hwy)) + geom_histogram(fill='yellow',alpha=0.5)

   # Q2, Create Barplots of car counts per manufacture with color fill defined by cyl count.
plt = ggplot(mpg,aes(x=manufacturer))
plt + geom_bar(aes(fill=factor(cyl)))
# print(plt)

   # Switch dataset for Q3.

head(txhousing)

   # Q3, Create a scatterplot of volume vs sales.

plt = ggplot(txhousing,aes(x=sales,y=volume))
print(plt + geom_point(color='red'))
print(plt + geom_point(color='red') + geom_smooth(color='blue'))
