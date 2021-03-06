\name{summary.emclust1}
\alias{summary.emclust1}
\alias{print.summary.emclust1}
\title{
Summary method for `emclust1' objects.
}
\description{
Optimal model parameters for \code{emclust1} objects.
}
\usage{
summary.emclust1(object, data, nclus, \dots)
print.summary.emclust1(x, \dots)
}

\arguments{
  \item{object}{an \code{emclust1} or a \code{summary.emclust1} object.}
  \item{x}{an \code{emclust1} or a \code{summary.emclust1} object.}
  \item{data}{the data used to obtain the \code{emclust1} object.}
  \item{nclus}{
    a vector of integers giving the number of clusters over which the
    summary is to take place (must be a subset of the column names of
    \code{object}). The default is to summarize over all numbers of clusters
    used in the original analysis. 
  }
  \item{\dots}{Further arguments:
    \item{modelid}{
      a vector of character strings denoting the models over which the
      summary is to take place (must be a subset of the row names of
      \code{object}). 
    }
    \item{tree, smpl, noise, Vinv, equal}{}
}}
\value{
  A list giving the optimal (according to BIC) parameter and z values,
  together with the associated classification and its uncertainty.
}
\seealso{
\code{\link{emclust1}}
}
\examples{
data(iris)
iris.bic <- emclust(iris[,1:4], nclus=3:5)
summary(iris.bic, iris[,1:4])


}
\keyword{cluster}
% Converted by Sd2Rd version 0.3-2.


