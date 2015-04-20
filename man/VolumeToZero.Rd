\name{VolumeToZero}
\alias{VolumeToZero}
\title{Set NA in Volume to 0}
\description{
This is not to be called by user, for the lack of data-type checking mechanism.
}
\usage{
VolumeToZero(df)
}
\arguments{
  \item{df}{object whose NAs to be replaced 0s.}
}
\value{
A dataframe, or matrix depending on the class of the argument.
}
\keyword{zero, NA}