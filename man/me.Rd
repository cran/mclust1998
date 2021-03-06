\name{me}
\alias{me}
\title{
EM for parameterized MVN mixture models
}
\description{
EM iteration (M-step followed by E-step) for estimating parameters in an 
MVN mixture model with possibly one Poisson noise term.
}
\usage{
me(data, modelid, z, \dots)
}
\arguments{
  \item{data}{
    matrix of observations.
  }
  \item{modelid}{
    An integer specifying a parameterization of the MVN covariance matrix
    defined by volume, shape and orientation charactertistics of the
    underlying clusters. The allowed values for \code{modelid} and their
    interpretation are as follows: \code{"EI"} : uniform spherical,
    \code{"VI"} : spherical, \code{"EEE"} : uniform variance, \code{"VVV"} :
    unconstrained variance, \code{"EEV"} : uniform shape and volume,
    \code{"VEV"} : uniform shape. 
  }
  \item{z}{
    matrix of conditional probabilities. \code{z} should have a row for
    each observation in \code{data}, and a column for each component of
    the mixture.
  }
  \item{\dots}{
    additional arguments, as follows:
    \item{eps}{
      Tolerance for determining singularity in the covariance matrix. The
      precise definition of \code{eps} varies the parameterization, each
      of which has a default.
    }
    \item{tol}{
      The iteration is terminated if the relative error in the
      loglikelihood value falls below \code{tol}. Default :
      \code{sqrt(.Machine$double.eps)}. 
    }
    \item{itmax}{
      Upper limit on the number of iterations. Default : \code{Inf} (no
      upper limit). 
    }
    \item{equal}{
      Logical variable indicating whether or not to assume equal
      proportions in the mixture. Default : \code{FALSE}. 
    }
    \item{noise}{
      Logical variable indicating whether or not to include a Poisson
      noise term in the model. Default : \code{FALSE}. 
    }
    \item{Vinv}{
      An estimate of the inverse hypervolume of the data region (needed only if
      \code{noise = TRUE}). Default : determined by function \code{hypvol}
}}}
\value{
the conditional probablilities at the final iteration (information about the
iteration is included as attributes).
}
\section{NOTE}{
The reciprocal condition estimate returned as an attribute ranges in value
between 0 and 1. The closer this estimate is to zero, the more likely it is
that the corresponding EM result (and BIC) are contaminated by roundoff error.
}
\references{
G. Celeux and G. Govaert, Gaussian parsimonious clustering models,
\emph{Pattern Recognition, }28:781-793 (1995).


A. P. Dempster, N. M. Laird and D. B. Rubin, Maximum Likelihood from
Incomplete Data via the EM Algorithm, \emph{Journal of the Royal Statistical
Society, Series B, }39:1-22 (1977).


G. J. MacLachlan and K. E. Basford, The EM Algorithm and Extensions, Wiley,
(1997).
}
\seealso{
\code{\link{mstep}}, \code{\link{estep}}
}
\examples{
data(iris)
cl <- mhclass(mhtree(iris[,1:4], modelid = "VVV"),3)
me( iris[,1:4], modelid = "VVV", ctoz(cl))


}
\keyword{cluster}
% Converted by Sd2Rd version 0.3-2.


