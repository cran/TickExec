\name{PortfolioWorth}
\alias{PortfolioWorth}
\title{Evaluate Market Worth of Given Protfolio}
\description{
The evaluation is done at time of a given date. 
}
\usage{
PortfolioWorth(dir = dir, df, date, time = 145900, market = 'SHSZ') 
}
\arguments{
  \item{dir}{The directory containing the Tick data.}
  \item{date}{the date of evaluation.}
  \item{time}{the time of evaluation.}
  \item{df}{The dataframe containing the portfolio.}
  \item{market}{specifying the sub-function to call depending on the market.}
}
\value{
A number indicating the markrt worth.
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
PortfolioWorth(dir = dir, df = dfLogSold, date = 20141014, time = 145900, 
               market = 'SHSZ')
}
\keyword{market worth}