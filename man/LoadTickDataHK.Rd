\name{.LoadTickDataHK}
\alias{.LoadTickDataHK}
\title{Load Tick Data for Hong Kong Stock Market}
\description{
NOT to be called by user!!! Only for 'LoadTickData' to call.
}
\usage{
.LoadTickDataHK(dir, ticker, date, CALL = 'BUY')
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{date of the tick data.}
  \item{ticker}{ticker of the tick data.}
  \item{CALL}{'BUY', 'SELL' or 'TRADE', depends on the chunk of the data wanted.}
}
\value{
A dataframe, or NA if no entries satisfy the given conditions.
}
\keyword{laod data}