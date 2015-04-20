\name{TotalPnL}
\alias{TotalPnL}
\title{Calculate Total PnL for Given Protfolio}
\description{
The evaluation is done at time of a given date. Length of 'TotalPnL' should be 
the same as number of trading days, not as 'dfLog'.
}
\usage{
TotalPnL(dir = dir, df, date, time = 160000, market = 'SHSZ')
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{df}{The dataframe containing the portfolio.}
  \item{date}{the date of evaluation.}
  \item{time}{the time of evaluation.}
  \item{market}{specifying the sub-function to call depending on the market.}
}
\value{
A number indicating the total pnl.
}
\examples{
## locate tick data directory ##
dir <- system.file("extdata", '', package = "TickExec")

## establish a posiyion to sell ##
dfLog = LimitBuy(dir = dir, date = 20141013, ticker = 000001, capital = 1e6, 
                 limitPrice = NA, orderFrom = 94545, orderLast = 600, 
                 costIn = 0.001, market = 'SHSZ')

## sell ##
dfLogSold = MarketSell(dir = dir, date = 20141014, orderTime = 140001, 
                       dfLog = dfLog, costOut = 0.001, market = 'SHSZ')
                       
## market worth ##
TotalPnL(dir = dir, df = dfLogSold, date = 20141014, time = 145900, 
               market = 'SHSZ')
}
\keyword{PnL}