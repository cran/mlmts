% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dis_var_2.R
\encoding{UTF-8}
\name{dis_var_2}
\alias{dis_var_2}
\title{Model-based dissimilarity proposed by Maharaj (1999)}
\usage{
dis_var_2(X, max_p = 2, criterion = "BIC")
}
\arguments{
\item{X}{A list of MTS (numerical matrices).}

\item{max_p}{The maximum order considered with respect to the fitting of VAR models.}

\item{criterion}{The criterion used to determine the VAR order.}
}
\value{
The computed pairwise distance matrix.
}
\description{
\code{dis_var_2} returns a pairwise distance matrix based on testing whether
each pair of series are or not generated from the same VARMA model
\insertCite{maharaj1999comparison}{mlmts}.
}
\details{
Given a collection of MTS, the function returns the pairwise distance matrix,
where the distance between two MTS \eqn{\boldsymbol X_T} and \eqn{\boldsymbol Y_T} is defined
as \eqn{1-p}, where \eqn{p} is the \eqn{p}-value of the test of hypothesis proposed
by . This test is based on checking the equality of the underlying VARMA models
of both series. The VARMA structures are approximated by truncated VAR(\eqn{\infty)}
models with a common order \eqn{k = \max{(k_x, k_y)}}, where \eqn{k_x} and \eqn{k_y}
are determined by the BIC or AIC criterion. The VAR coefficients are automatically fitted.
The dissimilarity between both series is given by \eqn{1-p} because this quantity
is expected to take larger values the more different both generating processes are.
The procedure is able to compare two dependent MTS.
}
\examples{
toy_dataset <- Libras$data[c(1, 2)] # Selecting the first two MTS from the
# dataset Libras
distance_matrix <- dis_var_2(toy_dataset, max_p = 1) # Computing the pairwise
# distance matrix based on the distance dis_var_2
}
\references{
{

  \insertRef{maharaj1999comparison}{mlmts}

}
}
\seealso{
\code{\link{dis_var_1}}, \code{\link[TSclust]{diss.AR.MAH}}
}
\author{
Ángel López-Oriona, José A. Vilar
}
