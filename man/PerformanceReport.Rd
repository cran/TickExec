\name{PerformanceReport}
\alias{PerformanceReport}
\title{Summarize Back Test Performance}
\description{
Give 13 basic indicators base on the simple arithmetic investments. 
}
\usage{
PerformanceReport(df, cumPnL, initCap = NA) 
}
\arguments{
  \item{df}{The dataframe containing the portfolio.}
  \item{cumPnL}{the daily pnl series, including those days with no trades.}
  \item{initCap}{initial capital, if given 'NA', then use the total capital recorded on the first trading day in the trade log 'df'.}
}
\value{
A dataframe with 13 basic indicators.
\item{DAYS}{number of total trading days.}
\item{FIRSTTRD}{the day when first trade happened, normally the first trading day.}  
\item{LASTTRD}{the day when last trade happened, normally the last trading day.}  
\item{NONTRDPERC}{percentage for non-trading days.}
\item{DAILYTRD}{average number of trades daily.}
\item{TOTALPNL}{total pnl.}
\item{RETPERTRD}{average return per trade.}
\item{TRDHITRAT}{trade-wise hit rate.}
\item{DLYHITRAT}{daily hit rate.}
\item{ANNRET}{annual return.}
\item{SHARPE}{annual sharpe ratio.}
\item{DRAWDOWN}{maximum draw down.}
\item{INRETURN}{intrinsic return.}
}
\examples{
## locate tick data directory ##
dir <- system.file("extdata", '', package = "TickExec")
ticker = 000001

df <- c()
pnl <- c()

for (d in 20141012:20141017) {

dfLog = LimitBuy(dir = dir, date = d, ticker = ticker, capital = 1e6, 
                 limitPrice = NA, orderFrom = 94545, orderLast = 600, 
                 costIn = 0.001, market = 'SHSZ')

dfLogSold = MarketSell(dir = dir, date = d, orderTime = 140001, 
                       dfLog = dfLog, costOut = 0.001, market = 'SHSZ')


df <- rbind(df, dfLogSold)
pnl <- c(pnl, TotalPnL(dir = dir, df = df, date = d))
}

PerformanceReport(df = df, cumPnL = pnl, initCap = 1e6)
}
\keyword{performance}