\name{ztoc}
\alias{ztoc}
\alias{ctoz}
\title{Conversion between conditional probabilities and a classification}
\description{The function ctoz converts a discrete classification into
  the corresponding z matrix. ztoc converts a z matrix to the nearest
  classification. 
}
\usage{
ztoc(z)
ctoz(cl, noise)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{z}{Matrix with conditional probabilities; each object one row,
    and each cluster one column.}
  \item{cl}{Classification vector.}
  \item{noise}{Noise indicator vector.}
}

\examples{
data(iris)
cltree <- mhtree(iris[,1:4], modelid="VVV")
cl <- mhclass(cltree, 3)
origz <- ctoz(cl)
z <- me(iris[,1:4], modelid="VVV", origz)
newcl <- ztoc(z)
}
\keyword{cluster}%-- one or more ...
