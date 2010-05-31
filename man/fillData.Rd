\name{fillData}
\alias{fillData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Opens a window for manual entry of X,Y,weight data set}
\description{
This function opens a manual data entry window, saves it as a data set and then sorts it by the X values (the first
column)}
\usage{
fillData()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A sorted by X data set}
\references{
%% ~put references to the literature/web site here ~
}
\author{Tal Carmi, Liat Gaziel}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#mydata<-fillData()

## The function is currently defined as
function () 
{
    mydata <- data.frame(X = numeric(0), Y = numeric(0), Weight = numeric(0))
    mydata <- edit(mydata)
    mydata <- mydata[order(mydata[1]), ]
    return(mydata)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
