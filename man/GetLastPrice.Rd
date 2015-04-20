\name{GetLastPrice}
\alias{GetLastPrice}
\title{Retrieve Last Trade Price of Given Instrument}
\description{
Seek the last trade price happened before given timestamp.
}
\usage{
GetLastPrice(dir = dir, date, time, ticker, market = 'SHSZ') 
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{date of the tick data.}
  \item{ticker}{ticker of the tick data.}
  \item{time}{timestamp of the wanted price.}
  \item{market}{specifying the sub-function to call depending on the market.}
}
\value{
A number, or NA if no entry satisfy the given conditions.
}
\keyword{last price}