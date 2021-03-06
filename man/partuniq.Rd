\name{partuniq}
\alias{partuniq}
\title{
Classifies Data According to Unique Observations
}
\description{
Gives a one-to-one mapping from unique observations to rows of a data matrix.
}
\usage{
partuniq(x, sep="001")
}
\arguments{
  \item{x}{Matrix of observations.}
  \item{sep}{Separation string.}
}
\value{
A vector of length \code{nrow(x)} with integer entries. An observation
\code{k} is assigned an integer \code{i} whenever observation \code{i}
is the first row of \code{x} that is identical to observation \code{k}
(note that \code{i <= k}).
}
\examples{
data(iris)
mhtree(iris[,1:4], partition = partuniq(iris[,1:4]))


}
\keyword{cluster}
% Converted by Sd2Rd version 0.3-2.


