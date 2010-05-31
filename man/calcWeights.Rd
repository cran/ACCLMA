\name{calcWeights}
\alias{calcWeights}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculates the relative weight of each observation}
\description{
This function receives a matrix after the averageSameXs function has been used on it and calculates the relative weight of
each observation by dividing its weight by the total weights. If at least one observation doesn't have a weight specified 
the function assumes all the observations are of equal weight}
\usage{
calcWeights(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{a matrix after the averageSameXs function has been used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A matrix with the updated weights column}
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
mydata<-averageSameXs(mydata)
calcWeights(mydata)

## The function is currently defined as
function (mat) 
{
    n <- size(mat)
    zeroWeight <- 0
    sumWeight <- 0
    for (i in 1:n) {
        if (is.null(mat[i, 3]) || is.na(mat[i, 3]) || mat[i, 
            3] == 0) {
            zeroWeight <- 1
        }
        sumWeight <- sumWeight + mat[i, 3]
    }
    if (zeroWeight == 1) {
        mat[3] = 1/n
        return(mat)
    }
    for (i in 1:n) {
        mat[i, 3] <- mat[i, 3]/sumWeight
    }
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
