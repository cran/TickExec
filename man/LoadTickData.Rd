\name{LoadTickData}
\alias{LoadTickData}
\title{Locate and Load Tick Data of Given Instrument at Given Date}
\description{
Since the format of the data may vary, this funcation is expecting to vary among 
different datasets and data structures.
}
\usage{
LoadTickData(dir, ticker, date, CALL = 'BUY')
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