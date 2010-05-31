\name{plotGraphs}
\alias{plotGraphs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plots the ACC vs LOI graph and the LMA graph}
\description{
This function receives a matrix containing the X,Y,Weight,FX,FY,LOI,LMA columns after the calcWeights and the
reduceSameXs function has been used on it and plots the appropriate ACC vs LOI graph and the LMA graph, each 
in a seperate window}
\usage{
plotGraphs(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{A matrix containing the X,Y,Weight,FX,FY,LOI,LMA columns after the calcWeights and the
reduceSameXs function has been used on it}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{none}
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
mydata<-calcLOI(mydata)
mydata<-calcLMA(mydata)
plotGraphs(mydata)

## The function is currently defined as
function (mat) 
{
    mat[size(mat) + 1, 4] = 0
    mat[size(mat) + 1, 5] = 0
    mat[size(mat) + 1, 6] = 0
    mat[size(mat) + 1, 7] = 0
    mat <- mat[order(mat[4]), ]
    trans <- t(mat)
    originalPar <- par(no.readonly = TRUE)
    par(lwd = 2)
    par(col = "black")
    plot(trans[4, ], trans[5, ], type = "n", main = "ACC", xlab = "F(x)", 
        ylab = "Accumulating Y Mean")
    par(col = "blue")
    lines(trans[4, ], trans[5, ], type = "l")
    par(col = "red")
    lines(trans[4, ], trans[6, ], type = "l")
    legend("bottomright", c("ACC", "LOE"), col = c("blue", "red"), 
        lwd = 2, bty = "n", text.col = "black")
    par(originalPar)
    windows()
    par(lwd = 2)
    par(col = "black")
    par(xaxs = "i")
    plot(trans[4, ], trans[7, ], type = "n", main = "LMA", xlab = "F(x)", 
        ylab = "LOE minus ACC")
    par(col = "black", lwd = 1)
    lines(c(0, 1), c(0, 0), type = "l")
    par(col = "blue", lwd = 2)
    lines(trans[4, ], trans[7, ], type = "l")
    par(originalPar)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
