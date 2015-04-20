\name{PriceToNA}
\alias{PriceToNA}
\title{Set 0 In Price To NA}
\description{
This is not to be called by user, for the lack of data-type checking mechanism.
}
\usage{
PriceToNA(df)
}
\arguments{
  \item{df}{object whose 0s to be replaced NAs.}
}
\value{
A dataframe, or matrix depending on the class of the argument.
}
\keyword{zero, NA}