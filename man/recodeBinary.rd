\name{recodeBinary}
\alias{recodeBinary}
\title{
Recode Binary Vectors
}
\description{
This function is called internally by DiNAMIC's \code{\link{peeling}} function, and by construction the \code{k}th entry of binary.vec is 1, where \code{k} is described below.  
If \code{length(binary.vec) = m}, then the
function produces a binary vector of length \code{m} that contains a single contiguous string of 1's, namely the string that contains the 1 in the \code{k}th position of binary.vec.
}
\usage{
recodeBinary(binary.vec, k)
}
\arguments{
  \item{binary.vec}{A binary vector of length \code{m} (>= 1) whose \code{k}th entry is 1.}
  \item{k}{A positive integer.}
}

\value{A binary vector of length m that contains a single contiguous string of 1's, namely the string that contains the 1 in the kth position of binary.vec.}
\references{
Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.
}
\author{
Vonn Walter, Andrew B. Nobel, Fred A. Wright

Maintainer: <vwalter@email.unc.edu>
Vonn Walter
}

\examples{
test = c(1, 0, 0, 1, 1, 0, 0, 1, 0)
recodeBinary(test, 5)   
#Returns (0, 0, 0, 1, 1, 0, 0, 0, 0)
}
\keyword{arith}
\keyword{logic}
