\name{DrawDown}
\alias{DrawDown}
\title{Calculate Maximum Draw Down of Series}
\description{
Input should be a non-negative series.
}
\usage{
DrawDown(x)
}
\arguments{
  \item{x}{Cumulative wealth (or return) process, non-negative, NA's will be ignored.}
}
\value{
A percentage between 0 and 1.
}
\examples{
## construct a series ##
x <- rnorm(100) + 10

## calculate drawdown ##
DrawDown(x)
}
\keyword{max draw down}