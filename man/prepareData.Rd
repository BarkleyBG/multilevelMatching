% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepareData.R
\name{prepareData}
\alias{prepareData}
\title{Prepare data for estimation}
\usage{
prepareData(Y, W, X, match_on, trimming = NULL, model_options, M_matches,
  J_var_matches)
}
\arguments{
\item{Y}{a continuous response vector (1 x n)}

\item{W}{a treatment vector (1 x n) with numerical values indicating
treatment groups}

\item{X}{A covariate matrix (p x n) with no intercept. When
match_on="existing", then X must be a vector (1 x n) of user-specified
propensity scores.}

\item{match_on}{"multinom", "polr", "existing", or "covariates",}

\item{trimming}{an indicator of whether trimming the sample to ensure overlap}

\item{model_options}{A list of the options to pass to propensity model.
Currently under development. Can only pass reference level to multinomial
logisitc regression.}

\item{M_matches}{Number of matches per unit for imputing potential outcomes,
as in Abadie and Imbens 2006. Currently can only support M=1.}

\item{J_var_matches}{Number of matches when estimating sigmasq(X,W) as in
Abadie and Imbens 2006. Currently can only support J=1.}
}
\value{
A list of information, including the \code{X, W, Y} arguments after sorting, and information on \code{unit_ids}, etc. See \code{\link{determineIDs}} for more.
}
\description{
A series of checks, tests, re-ordering, and other operations to prepare the
data for matching. This function can be run standalone, before running
\code{\link{multiMatch}}.
}
