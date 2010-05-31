\name{size}
\alias{size}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Counts the number of rows in a data set}
\description{
This function counts the number of rows in a data set by running over the first column and stops on the first
blank value in this column it finds}
\usage{
size(mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mat}{Any data set}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{An integer representing the number of rows in the data set}
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
size(mydata)

## The function is currently defined as
function (mat) 
{
    i <- 1
    while (!is.na(mat[i, 1]) & !is.null(mat[i, 1])) {
        i = i + 1
    }
    return(i - 1)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
