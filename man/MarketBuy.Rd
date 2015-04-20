\name{MarketBuy}
\alias{MarketBuy}
\title{Execute Market Buy Order}
\description{
(Try) to buy a given instrument at given date and time, by market order.The 
function can at most penetrate 5 levels of ask prices. For large capital, the
average executed price WILL be elevated.
}
\usage{
MarketBuy(dir = dir, date, ticker, capital, orderTime, costIn = 0.001)
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{the date for placing the order.}
  \item{ticker}{ticker for traget instrument, characters or numbers are both acceptable.}
  \item{capital}{amount of money wanted to fully invested on the instrument.}
  \item{orderTime}{Time of the day to place the market order.}
  \item{costIn}{transaction cost for buying.}
}
\value{
A dataframe, with corresponding summary statistics.
}
\examples{
## locate tick data directory ##
dir <- system.file("extdata", '', package = "TickExec")

## Execute order ##
dfLog = MarketBuy(dir = dir, date = 20141010, ticker = 000001, capital = 1e5,
                  orderTime = 94545, costIn = 0.001)
                  
## see result ##
dfLog
}
\keyword{market buy order}