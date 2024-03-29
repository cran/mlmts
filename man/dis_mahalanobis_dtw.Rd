% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dis_mahalanobis_dtw.R
\encoding{UTF-8}
\name{dis_mahalanobis_dtw}
\alias{dis_mahalanobis_dtw}
\title{Constructs a pairwise distance matrix based on a dissimilarity combining
both the dynamic time warping and the Mahalanobis distance.}
\usage{
dis_mahalanobis_dtw(X, M = NULL, ...)
}
\arguments{
\item{X}{A list of MTS (numerical matrices).}

\item{M}{The matrix with respect to compute the Mahalanobis distance
(default is the covariance matrix of concatenation of all MTS objects
by rows).}

\item{...}{Additional parameters for the function. See  \code{\link[dtw]{dtw}}.}
}
\value{
The computed pairwise distance matrix.
}
\description{
\code{dis_mahalanobis_dtw} returns a pairwise distance matrix based on a
dynamic time warping distance in which the local cost matrix is computed
by using the Mahalanobis distance \insertCite{mei2015learning}{mlmts}.
}
\details{
Given a collection of MTS, the function returns the pairwise distance matrix,
where the distance between two MTS \eqn{\boldsymbol X_T} and \eqn{\boldsymbol Y_T} is defined as
a dynamic time warping-type distance in which the local cost matrix is
constructed by using the Mahalanobis distance.
}
\examples{
toy_dataset <- Libras$data[1 : 10] # Selecting the first 10 MTS from the
# dataset Libras
distance_matrix <- dis_mahalanobis_dtw(toy_dataset) # Computing the pairwise
# distance matrix based on the distance dis_mahalanobis_dtw
}
\references{
{

  \insertRef{mei2015learning}{mlmts}

}
}
\seealso{
\code{\link{dis_dtw_1}}, \code{\link{dis_dtw_2}}, \code{\link{dis_mahalanobis_dtw}}
}
\author{
Ángel López-Oriona, José A. Vilar
}
