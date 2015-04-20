\name{TimeAdd}
\alias{TimeAdd}
\title{Calculate Endpoint Timestamp}
\description{
Beginning timestamp and duration must be given, only work with intraday time 
without date. 
}
\usage{
TimeAdd(time1, increase)
}
\arguments{
  \item{time1}{first timestamp, 5 or 6 digits.}
  \item{increase}{duration in senconds.}
}
\value{
A timestamp, in the form of a 5 (or 6) digits integer.
}
\keyword{time}