\name{calcLOI}
\alias{calcLOI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate the appropriate LOI value for each observation}
\description{
This function receives a matrix containing the X,Y,Weight,FX,FY columns, after the calcWeights and the 
reduceSameXs function has been used on it and calculates the LOI column}
\usage{
calcLOI(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{A matrix containing the X,Y,Weight,FX,FY columns, after the calcWeights and the 
reduceSameXs function has been used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A matrix with the newely added LOI column}
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
d <- c(1,1,3,4)
e <- c(5,6,7,8)
f <- c(1,1,1,1)
mydata <- data.frame(d,e,f)
names(mydata) <- c("X","Y","Weight")
mydata<-calcWeights(mydata)
mydata<-averageSameXs(mydata)
mydata<-calcFX(mydata)
mydata<-calcFY(mydata)
calcLOI(mydata)

## The function is currently defined as
function (mat) 
{
    n <- size(mat)
    for (i in 1:n) {
        mat[i, 6] = mat[i, 4] * mat[n, 5]
    }
    names(mat)[6] = "LOI"
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
