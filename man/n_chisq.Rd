% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/n_chisq.R
\name{n_chisq}
\alias{n_chisq}
\title{Sample Size Calculation for the Chi-Square Test}
\usage{
n_chisq(p_Y, p_X, alpha, power, r, power.exact = TRUE)
}
\arguments{
\item{p_Y}{Event rate of Group Y on the alternative.}

\item{p_X}{Event rate of Group X on the alternative.}

\item{alpha}{Significance level \eqn{\alpha}.}

\item{power}{Desired Power \eqn{1-\beta}.}

\item{r}{Quotient of Sample sizes \eqn{r = n_Y / n_X}.}

\item{power.exact}{Default = TRUE. If set to FALSE an approximative formula
is used for calculating the sample size, given by (5.7a) in [1]. On TRUE
the iterative approach is used.}
}
\value{
\code{n_chisq} returns an object of type list. The resulting
  Sample Sizes are located in entrys named \code{n_X}, \code{n_Y}, \code{n}.
  The resulting power is named \code{power_out}.
}
\description{
\code{n_chisq} performs the Sample Size calculation for two
  independent samples with binary data using the absolute rate
  difference quantifying the effect of an intervention.
  The method used here is based on the pages 21 - 26 in [1].
  The Sample Size is calculated using an iterative approach,
  recalculating the exact power, the sum of all discrete combinations
  fullfilling the alternative hypothesis to the approximative test
  for rising group sizes \code{n}. See p. 23 in [1] for further details.
}
\details{
\describe{
  \item{Null Hypothesis:}{\eqn{p_Y - p_X = 0}}
  \item{Alternative Hypothesis:}{\eqn{|p_Y - p_X| \ge \Delta_A}}
}

[1] M.Kieser: Fallzahlberechnung in der medizinischen Forschung [2018],
1th Edition
}
\examples{
n_chisq(p_Y = .5, p_X = .3, alpha = .05, power = .8, r = 2)
n_chisq(p_Y = .5, p_X = .3, alpha = .05, power = .8, r = 2)$n
n_chisq(p_Y = .5, p_X = .3, alpha = .05, power = .8, r = 2, power.exact = FALSE)

}
