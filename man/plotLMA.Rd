\name{plotLMA}
\alias{plotLMA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plots the ACC vs LOI and LMA graphs of an imported or manually entered data set}
\description{This is the main function of the package and the one that should be used to plot the ACC vs LOI and
LMA graphs. If weights are not relevant leave the column blank (null values)}
\usage{
plotLMA(str = NULL, header = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{str}{A string containing the full path of the CSV file to be imported, should be left blank if manual
data entry is desired}
  \item{header}{A boolean variable indicating if the imported CSV file has a header row or not, ignored if str
is null}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A matrix containing all the calculated columns that were used in the graphs plotting}
\references{
%% ~put references to the literature/web site here ~
}
\author{Tal Carmi,Liat Gaziel}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#plotLMA()

## The function is currently defined as
function (str = NULL, header = FALSE) 
{
    if (is.null(str)) {
        mat <- fillData()
    }
    else {
        mat <- fillCSVData(str, header)
    }
    mat <- calcWeights(mat)
    mat <- averageSameXs(mat)
    mat <- calcFX(mat)
    mat <- calcFY(mat)
    mat <- calcLOI(mat)
    mat <- calcLMA(mat)
    plotGraphs(mat)
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
