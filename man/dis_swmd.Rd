% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dis_swmd.R
\encoding{UTF-8}
\name{dis_swmd}
\alias{dis_swmd}
\title{Constructs a pairwise distance matrix based on VPCA and SWMD}
\usage{
dis_swmd(X, var_rate = 0.9, features = FALSE)
}
\arguments{
\item{X}{A list of MTS (numerical matrices).}

\item{var_rate}{Rate of retained variability concerning the
dimensionality-reduced MTS samples (default is 0.90).}

\item{features}{Logical. If \code{features = FALSE} (default), a distance matrix is returned. Otherwise, the function
returns a dataset of feature vectors.}
}
\value{
If \code{features = FALSE} (default), returns a distance matrix based on the distance \eqn{d_{SWMD}}. Otherwise, the function
returns a dataset of feature vectors, i.e., each row in the dataset contains the features employed to compute the
distance \eqn{d_{SWMD}}.
}
\description{
\code{dis_swmd} returns a pairwise distance matrix based on variable-based
principal component analysis (VPCA) and a spatial weighted matrix distance
(SWMD) \insertCite{he2018unsupervised}{mlmts}.
}
\details{
Given a collection of MTS, the function returns the pairwise distance matrix,
where the distance between two MTS \eqn{\boldsymbol X_T^{(i)}} and \eqn{\boldsymbol X_T^{(j)}} is defined
as  \deqn{d_{SWMD}(\boldsymbol X_T^{(i)}, \boldsymbol X_T^{(j)})=\Big[\big(vec
(\boldsymbol Y_i)-vec(\boldsymbol Y_j)\big)\boldsymbol
S\big(vec(\boldsymbol Y_i)-vec(\boldsymbol Y_j)\big)^\top\Big]^{1/2},}
where \eqn{\boldsymbol Y_i} and \eqn{\boldsymbol Y_j} are the dimensionality-
reduced MTS samples associated with \eqn{\boldsymbol X_T^{(i)}} and
\eqn{\boldsymbol X_T^{(j)}}, respectively, the operator \eqn{vec(\cdot)}
creates a vector by concatenating the columns of the matrix received as input
and \eqn{\boldsymbol S} is a matrix integrating the spatial dimensionality
difference between the corresponding elements.
}
\examples{
toy_dataset <- AtrialFibrillation$data[1 : 10] # Selecting the first 10 MTS from the
# dataset AtrialFibrillation
distance_matrix <- dis_swmd(toy_dataset) # Computing the pairwise
# distance matrix based on the distance dis_swmd
feature_dataset <- dis_swmd(toy_dataset, features = TRUE) # Computing
# the corresponding dataset of features
}
\references{
{

  \insertRef{he2018unsupervised}{mlmts}

}
}
\seealso{
\code{\link{vpca_clustering}}
}
\author{
Ángel López-Oriona, José A. Vilar
}
