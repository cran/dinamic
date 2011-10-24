\name{findNull}
\alias{findNull}
\title{
Find DiNAMIC's Null Distribution
}
\description{
This function is used internally by DiNAMIC's \code{\link{detailedLook}} and \code{\link{quickLook}} functions.  It uses the cyclic shift procedure to create an empirical distribution that provides an 
approximation to the distribution of \code{max(colSums(x))} or \code{min(colSums(x))} under the null hypothesis that no underlying CNAs are present.  The empirical distribution is based on 
\code{num.perms} cyclic shifts of \code{x}.
}

\usage{
findNull(x, num.perms, random.seed = NULL)
}


\arguments{
  \item{x}{
An n by m numeric matrix containing DNA copy number data from n subjects at m markers.
}
  \item{num.perms}{
A positive integer that represents the number of cyclic shifts used to create the empirical distribution.
}
  \item{random.seed}{
An optional random seed (default = NULL).
}
}
\details{
The cyclic shift procedure is detailed in Bioinformatics (2011) 27(5) 678 - 685.  Briefly, cyclic shift is a permutation procedure for DNA copy number data that largely preserves
the underlying correlation of the markers.  This function uses \code{num.perms} cyclic shifts of the copy number matrix \code{x} to create an approximate null distribution for \code{max(colSums(x))}
or \code{min(colSums(x))}.  The statistical significance of the observed value of \code{max(colSums(x))} or \code{min(colSums(x))} is assessed by the functions \code{\link{quickLook}} 
and \code{\link{detailedLook}}.
}
\value{
A numerical vector of length num.perms.
}
\references{
Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.
}
\author{
Vonn Walter, Andrew B. Nobel, Fred A. Wright

Maintainer: <vwalter@email.unc.edu>
Vonn Walter
}

\examples{
random.seed = 12345
set.seed(random.seed)
x = matrix(rnorm(50), 5, 10)
num.perms = 10
example.null = findNull(x, num.perms, random.seed)
#round(example.null, 2) 
#Returns 5.50 4.93 5.84 5.01 4.11 4.54 3.72 4.13 4.12 6.59
}
\keyword{array}
\keyword{arith}
