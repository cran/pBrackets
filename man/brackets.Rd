\name{brackets}
\alias{brackets}
\title{
Add brackets to a plot.
}
\description{
Draw different kinds of brackets between pairs of points.
}
\usage{
brackets(x1, y1, x2, y2, h = NULL,  ticks = 0.5, curvature = 0.5, type = 1,
col = 1, lwd = 1, lty = 1, xpd = FALSE)
}

\arguments{
  \item{x1, y1}{
coordinates of points from which to draw.
}
  \item{x2, y2}{
coordinates of points to which to draw.
}
  \item{h}{
brackets height (with ticks), given in euclidean distance.
For horizontal brackets it is the height in y-units,
for vertical brackets it is the width in x-units.
generally it is the euclidean distance: sqrt(x^2+y^2).
}
  \item{ticks}{
A single value or a vector of values in (0, 1),
gives the relative position of the ticks on the bracket.
Use NA or NULL to make a bracket without ticks.
Negative values resulting in ticks inside of brackets.
Values 0 or 1, flip the starting or end edges of the brackets.
}
  \item{curvature}{
A value in [0, 1], gives the amount of space on the bracket that is used for the curve,
it getting automatically smaller if many ticks are specified or the tick is near the edge.
}
  \item{type}{
A value in: 1 to 5 for different brackets forms, see example.
\itemize{
      \item{ 1: braces}
      \item{ 2: braces 2}
      \item{ 3: stump brackets}
      \item{ 4: square brackets}
      \item{ 5: parentheses}
}
}
  \item{col}{
color code or name of color.
}
  \item{lwd}{
line width
}
  \item{lty}{
line type
}
  \item{xpd}{
A logical value. If FALSE, all plotting is clipped to the plot region, if TRUE,
all plotting is clipped to the figure region.
}
}
\examples{

par(mar=c(1,1,1,1))
plot(0,0, type='n', xlim=c(0,20), ylim=c(0,20), axes=FALSE, xlab='', ylab='')
abline(h=seq(0,20), v=seq(0, 7), col=rgb(0.8, 0.9, 0.95))

brackets(0, 18, 7, 20, lwd=2)
text(8, 20, labels=expression(paste(bold('Braces:'), ' default')), adj=c(0,0))

brackets(0, 16, 7, 18, lwd=2, curvatur=1, type=2)
text(8, 18, labels=expression(paste(bold('Braces 2:'), ' curvatur=1, type=2')), adj=c(0,0))

brackets(0, 14, 7, 16, lwd=2, ticks=NA, curvatur=1, type=5)
text(8, 16, labels=expression(paste(bold('Parentheses:'), ' ticks=NA, curvature=1, type=5')),
 adj=c(0,0))

brackets(0, 12, 7, 14, lwd=2, ticks=NA, type=4, h=0.5)
text(8, 14, labels=expression(paste(bold('Square brackets:'), ' ticks=NA, type=4')), adj=c(0,0))

brackets(0, 10, 7, 12, lwd=2, ticks=NA, curvature=1, type=3)
text(8, 12, labels=expression(paste(bold('Chevrons:'), ' ticks=NA, curvature=1, type=3')),
 adj=c(0,0))

brackets(0, 8, 7, 10, lwd=2, ticks=NA, type=3, curvature=0.2, h=0.75)
text(8, 10, labels=expression(paste(bold('Stump brackets:'), ' ticks=NA, curvature=0.2, type=3')),
adj=c(0,0))

brackets(0, 6, 7, 8, lwd=2, type=4)
text(8, 8, labels=expression(paste(bold('Square brackets with tick:'), ' type=4')), adj=c(0,0))

brackets(0, 4, 7, 6, lwd=2, ticks=c(0.25, 0.75))
text(8, 6, labels=expression(paste(bold('Double tick braces:'), ' ticks=c(0.25, 0.75)')),
adj=c(0,0))

brackets(0, 2, 7, 4, lwd=2, ticks=-0.5, h=0.5)
text(8, 4, labels=expression(paste(bold('Negative tick braces:'), ' ticks=-0.5')), adj=c(0,0))

brackets(0, 0, 7, 2, lwd=2, ticks=c(-0.2, -0.4, -0.6, -0.8, 1), type=4)
text(8,2,labels=expression(paste(bold('Multiples ticks:'),'ticks=c(-0.2,-0.4,-0.6,-0.8,1),type=4')),
adj=c(0,0))

}
\keyword{braces}
\keyword{brackets}
