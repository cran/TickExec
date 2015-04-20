\name{GetQueueLength}
\alias{GetQueueLength}
\title{Retrieve Length of Quening Orders at Given Price}
\description{
Buy order should queue at bid prices, while sell order should queue at ask prices.
}
\usage{
GetQueueLength(dir = dir, date, orderTime, ticker, limitPrice, CALL, 
               position = 1, market = 'SHSZ')
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{date of the tick data.}
  \item{orderTime}{timestamp of the order queue.}
  \item{ticker}{ticker of the tick data.}
  \item{limitPrice}{the price level of the queue.}
  \item{CALL}{sell order or buy order.}
  \item{position}{position is between 0 and 1, indicating the relative 
                  position of the current order in the queue.}
  \item{market}{specifying the sub-function to call depending on the market.}
}
\value{
An integer indicating the queue length, or 0 if no entry satisfy the given conditions.
}
\keyword{queue length}