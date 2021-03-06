% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDPIRD.R
\name{fillDPIRDdaily}
\alias{fillDPIRDdaily}
\title{Fill missing DPIRD daily weather data (for one year) with data from nearest PPD station.}
\usage{
fillDPIRDdaily(id, year, weather, username, password)
}
\arguments{
\item{id}{Weather station ID.}

\item{year}{Year.}

\item{weather}{data frame containing DPIRD weather data downloaded using getDPIRDdaily().}

\item{username}{SILO username (available from https://legacy.longpaddock.qld.gov.au/silo/).}

\item{password}{SILO password (available form https://legacy.longpaddock.qld.gov.au/silo/).}
}
\value{
Data frame containing daily weather data.
}
\description{
Fill missing DPIRD daily weather data (for one year) with data from nearest PPD station.
}
\author{
Fiona Evans
}
