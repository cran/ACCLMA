\name{ACCLMA-package}
\alias{ACCLMA-package}
\alias{ACCLMA}
\docType{package}
\title{Plots ACCvsLOI & LMA graphs}
\description{
This package contains a function that imports data from a CSV file or uses manually entered data
from the format (X,Y,Weight) and plots the appropriate ACC vs LOI graph and LMA graph.
}
\details{
\tabular{ll}{
Package: \tab ACCLMA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-05-31\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
The main function is plotLMA(filename,header). If an import from a CSV file is required, enter the full file
path a string to the filename parameter and specify using the boolean header parameter if the file contains
a header row or not. Leaving this field blank opens a window for manual data entry. The data
set is expcted in the format of (X,Y,Weight), if weights are irrelvant, leave the column blank (null values).
}
\author{
Tal Carmi, Liat Gaziel

Maintainer: Tal Carmi <talca@bgu.ac.il>
}
\references{
~~ Literature or other references for background information ~~
}
\keyword{ package,LMA,ACC,LOI,Absolute Concentration Curve,LOI minus ACC,regression coefficient,robustness }
\seealso{
}
\examples{
#PlotlMA("c:/data.csv",TRUE)
}
