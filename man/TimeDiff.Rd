\name{TimeDiff}
\alias{TimeDiff}
\title{Find Difference Between Timestamps}
\description{
Only work with intraday time without date. origin time NOT necessarily less than 
ending time. Differnece must be given in seconds.
}
\usage{
TimeDiff(time1, time2)
}
\arguments{
  \item{time1}{first timestamp, 5 or 6 digits.}
  \item{time2}{second timestamp, 5 or 6 digits.}
}
\value{
An integer, possibly negative.
}
\keyword{time}