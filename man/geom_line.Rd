% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/geom-path-line.r
\name{geom_line}
\alias{geom_line}
\title{Connect observations, ordered by x value.}
\usage{
geom_line(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", show_guide = NA, ...)
}
\arguments{
\item{mapping}{The aesthetic mapping, usually constructed with
\code{\link{aes}} or \code{\link{aes_string}}. Only needs to be set
at the layer level if you are overriding the plot defaults.}

\item{data}{A data frame. If specified, overrides the default data frame
defined at the top level of the plot.}

\item{stat}{The statistical transformation to use on the data for this
layer, as a string.}

\item{position}{Postion adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{show_guide}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.}

\item{...}{other arguments passed on to \code{\link{layer}}. There are
  three types of arguments you can use here:

  \itemize{
  \item Aesthetics: to set an aesthetic to a fixed value, like
     \code{color = "red"} or \code{size = 3}.
  \item Other arguments to the layer, for example you override the
    default \code{stat} associated with the layer.
  \item Other arguments passed on to the stat.
  }}
}
\description{
Connect observations, ordered by x value.
}
\section{Aesthetics}{

\Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("geom", "line")}
}
\examples{
# Summarise number of movie ratings by year of movie
mry <- do.call(rbind, by(movies, round(movies$rating), function(df) {
  nums <- tapply(df$length, df$year, length)
  data.frame(rating=round(df$rating[1]), year = as.numeric(names(nums)), number=as.vector(nums))
}))

p <- ggplot(mry, aes(x=year, y=number, group=rating))
p + geom_line()

# Add aesthetic mappings
p + geom_line(aes(size = rating))
p + geom_line(aes(colour = rating))

# Change scale
p + geom_line(aes(colour = rating)) + scale_colour_gradient(low="red")
p + geom_line(aes(size = rating)) + scale_size(range = c(0.1, 3))

# Set aesthetics to fixed value
p + geom_line(colour = "red", size = 1)

# Using a time series
ggplot(economics, aes(date, pop)) + geom_line()
ggplot(economics, aes(date, pop)) +
  geom_line() +
  scale_y_log10()
ggplot(subset(economics, date > as.Date("2006-1-1")), aes(date, pop)) +
  geom_line()
ggplot(economics, aes(date, pop)) +
  geom_line(aes(size = unemploy/pop))

# Use the arrow parameter to add an arrow to the line
# See ?grid::arrow for more details
c <- ggplot(economics, aes(x = date, y = pop))
# Arrow defaults to "last"
library(grid)
c + geom_line(arrow = arrow())
c + geom_line(arrow = arrow(angle = 15, ends = "both", type = "closed"))

# See scale_date for examples of plotting multiple times series on
# a single graph

# A simple pcp example

y2005 <- runif(300, 20, 120)
y2010 <- y2005 * runif(300, -1.05, 1.5)
group <- rep(LETTERS[1:3], each = 100)

df <- data.frame(id = seq_along(group), group, y2005, y2010)
library(reshape2) # for melt
dfm <- melt(df, id.var = c("id", "group"))
ggplot(dfm, aes(variable, value, group = id, colour = group)) +
  geom_path(alpha = 0.5)
}
\seealso{
\code{\link{geom_path}}: connect observations in data order,
 \code{\link{geom_segment}}: draw line segments,
 \code{\link{geom_ribbon}}: fill between line and x-axis
}

