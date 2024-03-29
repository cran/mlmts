% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ArticularlyWordRecognition.R
\docType{data}
\name{ArticularlyWordRecognition}
\alias{ArticularlyWordRecognition}
\title{ArticularyWordRecognition}
\format{
A \code{list} with two elements, which are:
\describe{
\item{\code{data}}{A list with 575 MTS.}
\item{\code{classes}}{A numeric vector indicating the corresponding classes associated with the elements in \code{data}.}
}
}
\usage{
data(ArticularlyWordRecognition)
}
\description{
Multivariate time series (MTS) of movements of tongue and lips during speech. The data were collected from multiple
native English speakers producing 25 words.
}
\details{
Each element in \code{data} is a matrix formed by 144 rows (time points) indicating movement and 9 columns (variables) indicating sensors. The first 275 elements
correspond to the training set, whereas the last 300 elements correspond to the test set. The numeric vector \code{classes} is formed
by integers from 1 to 25, indicating that there are 25 different classes in the database. Each class is associated with a different
word produced by the speaker. For more information, see \insertCite{bagnall2018uea;textual}{mlmts}.
Run "install.packages("ueadata1", repos="https://anloor7.github.io/drat")"
to access this dataset and use the syntax "ueadata1::ArticularyWordRecognition".
}
\references{
{

  \insertRef{bagnall2018uea}{mlmts}

  \insertRef{ruiz2021great}{mlmts}

  \insertRef{bagnallweb}{mlmts}

}
}
\keyword{datasets}
