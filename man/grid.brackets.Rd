\name{grid.brackets}
\alias{grid.brackets}
\title{
Add brackets to a grid pannel.
}
\description{
Draw brackets between pairs of points. (grid)
}
\usage{
grid.brackets(x1, y1, x2, y2, h = NULL, ticks = 0.5, curvature = 0.5,
type = 1, col = 1, lwd = 1, lty = "solid")
}
\arguments{
  \item{x1, y1}{
coordinates of points from which to draw.
}
  \item{x2, y2}{
coordinates of points to which to draw.
}
  \item{h}{
brackets height (with ticks), given in npc units.
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
it is getting automatically smaller if many ticks are specified or the tick is near the edge.
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

}
\note{
To plot brackets outside of ploting region use trellis.focus("panel", 1, 1, clip.off=TRUE)
}

\examples{

library(grid)
grid.newpage()
pushViewport(plotViewport(margins=c(0.5, 0.5, 0.5, 0.5), xscale = c(-1, 21), yscale = c(-1, 21)))
grid.grill(h=unit(seq(0,20),'native'), v=unit(seq(0,7),'native'), gp=gpar(col=rgb(0.8, 0.9, 0.95)))

grid.brackets(0, 18, 7, 20, lwd=2)
grid.text(x=unit(8, 'native'), y=unit(20, 'native'), label=expression(paste(bold('Braces:'),
' default')), hjust = 0, vjust=0)

grid.brackets(0, 16, 7, 18, lwd=2, curvatur=1, type=2)
grid.text(x=unit(8, 'native'), y=unit(18, 'native'), label=expression(paste(bold('Braces 2:'),
' curvatur=1, type=2')), hjust = 0, vjust=0)

grid.brackets(0, 14, 7, 16, lwd=2, ticks=NA, curvatur=1, type=5)
grid.text(x=unit(8, 'native'), y=unit(16, 'native'), label=expression(paste(bold('Parentheses:'),
' ticks=NA, curvature=1, type=5')), hjust = 0, vjust=0)

grid.brackets(0, 12, 7, 14, lwd=2, ticks=NA, type=4, h=0.03)
grid.text(x=unit(8,'native'), y=unit(14,'native'), label=expression(paste(bold('Square brackets:'),
' ticks=NA, type=4')), hjust = 0, vjust=0)

grid.brackets(0, 10, 7, 12, lwd=2, ticks=NA, curvature=1, type=3)
grid.text(x=unit(8, 'native'), y=unit(12, 'native'), label=expression(paste(bold('Chevrons:'),
' ticks=NA, curvature=1, type=3')), hjust = 0, vjust=0)

grid.brackets(0, 8, 7, 10, lwd=2, ticks=NA, type=3, curvature=0.2, h=0.04)
grid.text(x=unit(8, 'native'), y=unit(10, 'native'), label=expression(paste(bold('Stump brackets:'),
' ticks=NA, curvature=0.2, type=3')), hjust = 0, vjust=0)

grid.brackets(0, 6, 7, 8, lwd=2, type=4)
grid.text(x=unit(8,'native'), y=unit(8,'native'),
label=expression(paste(bold('Square brackets with tick:'), ' type=4')), hjust = 0, vjust=0)

grid.brackets(0, 4, 7, 6, lwd=2, ticks=c(0.25, 0.75))
grid.text(x=unit(8,'native'), y=unit(6,'native'),
label=expression(paste(bold('Double tick braces:'), ' ticks=c(0.25, 0.75)')), hjust = 0, vjust=0)

grid.brackets(0, 2, 7, 4, lwd=2, ticks=-0.5, h=0.03)
grid.text(x=unit(8, 'native'), y=unit(4, 'native'),
label=expression(paste(bold('Negative tick braces:'), ' ticks=-0.5')), hjust = 0, vjust=0)

grid.brackets(0, 0, 7, 2, lwd=2, ticks=c(-0.2, -0.4, -0.6, -0.8, 1), type=4)
grid.text(x=unit(8,'native'), y=unit(2,'native'), label=expression(paste(bold('Multiples ticks:'),
' ticks=c(-0.2,-0.4,-0.6,-0.8, 1), type=4')), hjust = 0, vjust=0)

popViewport()

}
\keyword{braces}
\keyword{brackets}
