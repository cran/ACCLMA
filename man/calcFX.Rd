\name{calcFX}
\alias{calcFX}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculates the appropriate F(X) value of each observation}
\description{Calculate the F(X) of each obseravtion by summing the F(X) of the previous observation with the weight
of the current observation, should be used only after the calcWeights has been used on the source matrix}
\usage{
calcFX(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{A data set that has the X,Y,Weight columns after calcWeights and reduceSameXs has been used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Return a data set with the F(X) column calculated}
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
d <- c(1,1,3,4)
e <- c(5,6,7,8)
f <- c(1,1,1,1)
mydata <- data.frame(d,e,f)
names(mydata) <- c("X","Y","Weight")
mydata<-calcWeights(mydata)
mydata<-averageSameXs(mydata)
calcFX(mydata)

## The function is currently defined as
function (mat) 
{
    mat[1, 4] = mat[1, 3]
    n <- size(mat)
    for (i in 2:n) {
        mat[i, 4] = mat[i - 1, 4] + mat[i, 3]
    }
    names(mat)[4] <- "FX"
    return(mat)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
