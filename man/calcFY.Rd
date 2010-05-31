\name{calcFY}
\alias{calcFY}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculates the appropriate FY value of each observation}
\description{
Calculates the aggregated mean Y value of each observation by summing the F(Y) value of the previous observation
with the Y*Weight of the current observation}
\usage{
calcFY(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{
A matrix containing the X,Y,Weight,FX columns after the function calcWeights,reduceSameXs and calcFX has been
used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A matrix containg the newely added FY column}
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
calcFY(mydata)

## The function is currently defined as
function (mat) 
{
    mat[1, 5] = mat[1, 2] * mat[1, 3]
    n <- size(mat)
    for (i in 2:n) {
        mat[i, 5] = mat[i - 1, 5] + mat[i, 2] * mat[i, 3]
    }
    names(mat)[5] <- "FY"
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
