\name{InitLogEntry}
\alias{InitLogEntry}
\title{Initialize Log for Each Trade}
\description{
This function should only be called buy 'MarketBuy', 'MarketSell', 'LimitBuy' or 
'LimitSell', not by users.
}
\usage{
InitLogEntry(dateIn, ticker, capital, timeIn = NA, execVol = 0,
             execQuant = 0, avgPrice = NA, depthIn = NA)
}
\arguments{
  \item{dateIn}{date of the trade.}
  \item{ticker}{ticker for traget instrument, characters or numbers are both acceptable.}
  \item{capital}{amount of money wanted to fully invested on the instrument.}
  \item{timeIn}{The time when the trade was first executed.}
  \item{execVol}{executed volume, in shares.}
  \item{execQuant}{executed quantities, in dollars.}
  \item{avgPrice}{average price achieved the the trade.}
  \item{depthIn}{the level of ask prices that trade had reached. 0 for limit orders.}
}
\value{
A dataframe.
}
\keyword{trade log}