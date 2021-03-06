% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worcs_checklist.R
\docType{data}
\name{worcs_checklist}
\alias{worcs_checklist}
\title{WORCS checklist}
\format{
A data frame with 15 rows and 5 variables.
}
\usage{
data(worcs_checklist)
}
\description{
This checklist can be used to see whether a project adheres to the principles
of open reproducible code in science, as set out in the WORCS paper.
}
\details{
\tabular{lll}{
  \strong{category} \tab \code{factor} \tab Category of the checklist
  element.\cr
  \strong{name} \tab \code{factor} \tab Name of the checklist
  element.\cr
  \strong{description} \tab \code{factor} \tab What are the requirements
  to claim that this checklist element is met?\cr
  \strong{importance} \tab \code{factor} \tab Whether the checklist
  element is essential to obtain a green 'open science' badge, or optional.\cr
  \strong{check} \tab \code{logical} \tab Whether the criterion is checked
  automatically by \code{\link{worcs_badge}}.
}
}
\references{
by Van Lissa, Brandmaier, Brinkman, & Vreede (2020)
<doi:10.17605/OSF.IO/ZCVBS>.
}
\keyword{datasets}
