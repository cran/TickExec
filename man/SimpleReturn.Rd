\name{SimpleReturn}
\alias{SimpleReturn}
\title{Calculate Simple Price to Price Return}
\description{
Used to calculate close-to-close, open-to-close, etc, returns from given 
price matrices. Duration can be 0 or any positive integers. 
}
\usage{
SimpleReturn(priceFrom, priceTo, diff = 0)
}
\arguments{
  \item{priceFrom}{A matrix with the beginning prices.}
  \item{priceTo}{A matrix with the ending prices.}
  \item{diff}{Number of rows for the two matrices' dislocation.}
}
\value{
A matrix, of corresponding returns.
}
\keyword{Return Matrix}