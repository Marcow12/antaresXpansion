% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation_settings.R
\name{set_first_day}
\alias{set_first_day}
\title{Set parameter simulation start}
\usage{
set_first_day(first_day, opts = antaresRead::simOptions())
}
\arguments{
\item{first_day}{day of the beginning of the simulated period. 
Numeric between 1 and 365.}

\item{opts}{list of simulation parameters returned by the function
\code{antaresRead::setSimulationPath}}
}
\value{
The function does not return anything. It is  used to modify the input of an 
ANTARES study
}
\description{
\code{set_first_day} is a function which modifies the input file of an ANTARES
study and set the "simulation_start" parameter. This parameters defines which is the first
day of the study horizon which should be simulated
}

