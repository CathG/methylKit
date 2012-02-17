\docType{methods}
\name{calculateDiffMeth}
\alias{calculateDiffMeth}
\alias{calculateDiffMeth,methylBase-method}
\title{Calculates differential methylation statistics}
\usage{
  calculateDiffMeth(.Object,slim=TRUE,coverage.cutoff=0,weigthed.mean=TRUE,num.cores=1)
}
\arguments{
  \item{.Object}{a methylBase object to calculate
  differential methylation}

  \item{slim}{If TRUE(default) SLIM method will be used for
  P-value adjustment. Currently TRUE is the only valid
  value.}

  \item{coverage.cutoff}{a numeric value (deafult: 0). The
  regions/bases without this coverage threshold will be
  removed}

  \item{weigthed.mean}{calculate the mean methylation
  difference between groups using read coverage as weights}

  \item{num.cores}{integer for denoting how many cores
  should be used for differential methylation calculations
  (only can be used in machines with multiple cores)}
}
\value{
  a methylDiff object containing the differential
  methylation statistics and locations
}
\description{
  Calculates differential methylation statistics
}
\note{
  The function either uses a logistic regression (when
  there are multiple samples per group) or fisher's exact
  when there is one sample per group.
}
