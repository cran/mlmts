% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dis_ppca.R
\encoding{UTF-8}
\name{dis_ppca}
\alias{dis_ppca}
\title{Constructs a pairwise distance matrix relying on a piecewise representation
based on PCA}
\usage{
dis_ppca(X, w = 2, var_rate = 0.9, features = F)
}
\arguments{
\item{X}{A list of MTS (numerical matrices).}

\item{w}{The number of segments (in the time dimension) in which we want to
divide the MTS (default is 2).}

\item{var_rate}{Rate of retained variability concerning the
dimensionality-reduced MTS samples (default is 0.90).}

\item{features}{Logical. If \code{features = FALSE} (default), a distance matrix is returned. Otherwise, the function
returns a dataset of feature vectors.}
}
\value{
The computed pairwise distance matrix.
}
\description{
\code{dis_ppca} returns a pairwise distance matrix based on an extension of
the procedure proposed by \insertCite{wan2022dimensionality;textual}{mlmts}. The
function can also be used for dimensionality reduction purposes.
}
\details{
Given a collection of MTS, the function returns the pairwise distance matrix,
where the distance between two MTS \eqn{\boldsymbol X_T} and \eqn{\boldsymbol Y_T} is defined
as \deqn{d_{PPCA}(\boldsymbol X_{T}, \boldsymbol Y_{T})=\Big|\Big|vec\big(\widehat{\boldsymbol \Sigma}_a ^{\boldsymbol X_T}\big)
-vec\big(\widehat{\boldsymbol \Sigma}_a^{\boldsymbol Y_T}\big)\Big|\Big|,}
where \eqn{\widehat{\boldsymbol \Sigma}_a ^{\boldsymbol X_T}} and \eqn{\widehat{\boldsymbol \Sigma}_a ^{\boldsymbol Y_T}}
are estimates of the covariance matrices based on a piecewise representation for which the
original MTS \eqn{\boldsymbol X_T} and \eqn{\boldsymbol Y_T}, respectively,
are divided into a number of \code{w} local segments (in the time dimension).
If we use the function to perform dimensionality reduction (\code{features = TRUE}),
then for a given series \eqn{\boldsymbol X_T}, matrix \eqn{\widehat{\boldsymbol \Sigma}_a ^{\boldsymbol X_T}}
is decomposed by executing the standard PCA and a certain number of
principal components are retained (according to the parameter \code{var_rate}).
Function \code{dis_ppca} returns the reduced counterpart of \eqn{\boldsymbol X_T},
which is constructed from \eqn{\boldsymbol X_T} by considering the
matrix of scores with respect to the retained principal components.
}
\examples{
reduced_dataset <- dis_ppca(RacketSports$data[1], features = TRUE) # Reducing
# the dimensionality of the first MTS in dataset RacketSports
reduced_dataset
distance_matrix <- dis_ppca(RacketSports$data) # Computing the
# corresponding distance matrix for all MTS in dataset RacketSports
# (by default, features = F)
}
\references{
{

  \insertRef{wan2022dimensionality}{mlmts}

}
}
\author{
Ángel López-Oriona, José A. Vilar
}
