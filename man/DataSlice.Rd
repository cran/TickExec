\name{DataSlice}
\alias{DataSlice}
\title{Truncate Given Dataframe According to Given Time Window}
\description{
The input dataframe should have a column named 'Time'. If both 'time1', 'time2' 
and 'last' were given, then the actual window size should the smaller of 
(time2 - time1) and 'last'.
}
\usage{
DataSlice(df, time1 = 000001, time2 = 235959, last = 24 * 3600)
}
\arguments{
  \item{df}{dataframe to be truncated.}
  \item{time1}{lower bound of the time window.}
  \item{time2}{upper bound of the time window.}
  \item{last}{width od the time window.}

}
\value{
A dataframe, or NA if no entries satisfy the given time window.
}
\keyword{truncate data}