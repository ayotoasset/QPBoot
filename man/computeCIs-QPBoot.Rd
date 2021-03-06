% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QPBoot-class.R
\name{computeCIs-QPBoot}
\alias{computeCIs-QPBoot}
\alias{computeCIs}
\alias{computeCIs,QPBoot-method}
\title{Pointwise Confidence Intervalls}
\usage{
computeCIs(object, alpha = 0.05, method = c("quantiles", "norm"),
  levels = object@sPG@levels[[1]])
}
\arguments{
\item{object}{the \link{QPBoot} object that will be plotted}

\item{alpha}{the significiant level of the confidence intervalls, defaults to \code{0.05}}

\item{method}{either "quantile" or "norm", determines how the confidence intervalls are calculated.
see description for details}

\item{levels}{numeric vector containing values between 0 and 1 for which the 
\link[quantspec]{smoothedPG}. Will be estimated. These are the
quantiles levels that are used for the validation}
}
\value{
Returns a \code{list} with four elements
\item{\code{q_up}}{}
\item{\code{q_low}}{}
\item{\code{mean}}{}
\item{\code{sd}}{}
}
\description{
Depending on \code{method} this calculates pointwise confidence intervalls for
a smoothed periodgram that belongs to a time series defined by \code{model} and
\code{param}. If \code{(method = "quantiles")} it computes the \eqn{\alpha/2}
and \eqn{1-\alpha/2} quantiles from the Values of the simulated smoothed periodograms and
returns those. If \code{(method = "norm")} it uses the asymptotic normality
of the smoothed periodograms by estimating \code{mean} and 
\code{standard deviation} for each frequency and computing the \eqn{\alpha/2}
and \eqn{1-\alpha/2} quantiles from a normal distribution with the estimated
parameters.
}
