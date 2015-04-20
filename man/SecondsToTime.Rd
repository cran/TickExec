\name{SecondsToTime}
\alias{SecondsToTime}
\title{Calculate Timestamp}
\description{
Number of seconds since midnight must be given, only work with intraday time without date.
}
\usage{
SecondsToTime(seconds)
}
\arguments{
  \item{seconds}{number of seconds since midnight.}
}
\value{
A timestamp, in the form of a 5 (or 6) digits integer.
}
\keyword{time}