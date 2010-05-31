\name{averageSameXs}
\alias{averageSameXs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Unifies all same X observations}
\description{
The function unifies all the observations with the same X values into one obseravtion with regard to the
weights of each observation
}
\usage{
averageSameXs(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{A matrix containing the X,Y,Weight columns after the calcWeights function been used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{Data set with only row for each X value}
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
averageSameXs(mydata)

## The function is currently defined as
function (mat) 
{
    n <- size(mat)
    temp <- matrix(NA, nrow = n, ncol = 3)
    line <- 1
    i <- 1
    while (i <= n) {
        j <- i
        sumY <- 0
        sumWeights <- 0
        while (j <= n & mat[i, 1] == mat[j, 1]) {
            sumY <- sumY + mat[j, 2] * mat[j, 3]
            sumWeights <- sumWeights + mat[j, 3]
            j <- j + 1
        }
        temp[line, 1] <- mat[i, 1]
        temp[line, 2] <- sumY/sumWeights
        temp[line, 3] <- sumWeights
        line <- line + 1
        i <- j
    }
    temp <- as.data.frame(temp[1:(line - 1), ])
    names(temp)[1] = "X"
    names(temp)[2] = "Y"
    names(temp)[3] = "Weights"
    return(temp)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
