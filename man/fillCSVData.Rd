\name{fillCSVData}
\alias{fillCSVData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Imports data from a CSV file and sort it by the first column}
\description{
This function open a CSV, copies its first three columns to a data set and then sort it by the first column,
the function assumes the first column is the X values, the second one the Y values and the third one to be the
weights column and names these columns accordingly}
\usage{
fillCSVData(str, head)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{str}{A string containing the full path of the CSV file to be imported, should be left blank if manual
data entry is desired}
  \item{head}{A boolean variable indicating if the imported CSV file has a header row or not, ignored if str
is null}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A data set sorted by the first column}
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
#Assuming there is a three column csv in C drive named "data.csv" with no header
#mydata<-fillCSVData("c:/data.csv",FALSE)

## The function is currently defined as
function (str, head) 
{
    mat <- read.table(str, header = head, sep = ",")
    names(mat)[1] = "X"
    names(mat)[2] = "Y"
    if ((is.null(mat[1, 3]) && is.null(mat[2, 3])) || (mat[1, 
        3] == 0 && mat[2, 3] == 0)) 
        mat <- calcWeights(mat)
    names(mat)[3] = "Weights"
    mat <- mat[order(mat[1]), ]
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
