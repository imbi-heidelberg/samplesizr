% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/n_ttest.R
\name{power_ttest}
\alias{power_ttest}
\title{Power Calculation for the two-sided t-Test}
\usage{
power_ttest(effect, sd, n_X, alpha, r = 1)
}
\arguments{
\item{effect}{Effect \eqn{\Delta_A} used as alternative hypothesis.}

\item{sd}{Standard deviation \eqn{\sigma}.}

\item{n_X}{Sample size of group X.}

\item{alpha}{Significance level \eqn{\alpha}.}

\item{r}{Default = 1. Quotient of Group sizes \eqn{r = n_Y / n_X}.}
}
\value{
\code{n_ttest} returns the power.
}
\description{
\code{n_ttest} performs the power calculation for the t-Test
  comparing two independent samples.
  The method is based on the pages 16 - 18 in [1].
}
\details{
[1] M.Kieser: Fallzahlberechnung in der medizinischen Forschung [2018], 1th Edition
}
\examples{
power_ttest(effect = 10, sd = 20, n_X = 70, alpha = .05)

}
