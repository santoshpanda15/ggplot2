\name{GeomPointrange}
\alias{geom_pointrange}
\alias{GeomPointrange}
\title{geom_pointrange}
\description{An interval represented by a vertical line, with a point in the middle}
\details{
This page describes \code{\link{geom_pointrange}}, see \code{\link{layer}} and \code{\link{qplot}} for how to create a complete plot from individual components.
}
\section{Aesthetics}{
The following aesthetics can be used with geom_pointrange.  Aesthetics are mapped to variables in the data with the \code{\link{aes}} function: \code{geom_pointrange(\code{\link{aes}}(x = var))}
\itemize{
  \item \code{x}: x position (\strong{required}) 
  \item \code{min}: minimum of interval (\strong{required}) 
  \item \code{max}: maximum of interval (\strong{required}) 
  \item \code{colour}: border colour 
  \item \code{size}: size 
  \item \code{linetype}: line type 
  \item \code{shape}: shape of point 
}
}
\usage{geom_pointrange(...)}
\arguments{
 \item{...}{ignored }
}
\seealso{\itemize{
  \item \code{\link{geom_errorbar}}: error bars
  \item \code{\link{geom_linerange}}: range indicated by straight line, + examples
  \item \code{\link{geom_crossbar}}: hollow bar with middle indicated by horizontal line
  \item \code{\link{stat_summary}} : examples of these guys in use
  \item \code{\link{geom_smooth}}: for continuous analog
  \item \url{http://had.co.nz/ggplot/geom_pointrange.html}
}}
\value{A \code{\link{layer}}}
\examples{\dontrun{
    # See geom_linerange for examples
}}
\author{Hadley Wickham, \url{http://had.co.nz/}}
\keyword{hplot}