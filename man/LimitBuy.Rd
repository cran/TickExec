\name{LimitBuy}
\alias{LimitBuy}
\title{Execute Limit Buy Order}
\description{
(Try) to buy a given instrument at given date and time slot, by limit order. 
If limit price was not given, then use the last trading price as limit price. If 
both 'orderTo' and 'orderLast' was given, then the smaller one will be adopted.
}
\usage{
LimitBuy(dir = dir, date, ticker, capital, limitPrice = NA, orderFrom, 
         orderTo = 150000, orderLast = 7 * 3600, costIn = 0.001)
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{the date for placing the order.}
  \item{ticker}{ticker for traget instrument, characters or numbers are both 
                acceptable.}
  \item{capital}{amount of money wanted to fully invested on the instrument.}
  \item{limitPrice}{the limit price to sell.}
  \item{orderFrom}{time of the order being placed.}
  \item{orderTo}{time of the order being withdrawed.}
  \item{orderLast}{duration of the order, in seconds.}
  \item{costIn}{transaction cost for buying.}
}
\value{
A dataframe, with corresponding summary statistics.
}
\examples{
## locate tick data directory ##
dir <- system.file("extdata", '', package = "TickExec")

## Execute order, given duration ##
dfLog1 = LimitBuy(dir = dir, date = 20141013, ticker = 000001, capital = 1e6, 
                 limitPrice = NA, orderFrom = 94545, orderLast = 600, 
                 costIn = 0.001)
                 
## Execute order, given ending time ##
dfLog2 = LimitBuy(dir = dir, date = 20141013, ticker = 000001, capital = 1e6, 
                 limitPrice = NA, orderFrom = 94545, orderTo = 100001, 
                 costIn = 0.001)
                  
## see result ##
dfLog1
dfLog2
}
\keyword{limit buy order}