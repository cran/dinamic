\name{peeling}
\alias{peeling}
\title{
Apply the Peeling Procedure at a Given Marker
}
\description{
This function is used internally by DiNAMIC's \code{\link{detailedLook}} and \code{\link{quickLook}} functions.  Briefly, \code{\link{detailedLook}} and \code{\link{quickLook}} assess the 
statistial significance of the most aberrant gain (loss).  Once this is done, the \code{\link{peeling}} function produces a new matrix of copy number data in which the original aberrant gain (loss) has 
been nullified.  This allows users to assess the statistical significance of subsequent gains (losses) conditional on having found and removed previous gains (losses).
}
\usage{
peeling(x, marker.data, cytoband, k)
}

\arguments{
  \item{x}{
An n by m numeric matrix containing DNA copy number data from n subjects at m markers.
}
  \item{marker.data}{
A two-column numeric matrix of marker position data for markers in the autosomes.  Column 1 contains the chromosome number for each marker, and column 2 contains the position (in base pairs)
for each markers.  This is a submatrix of the marker position matrix used by \code{\link{quickLook}} and \code{\link{detailedLook}}.
}
  \item{cytoband}{
A character vector of length m that contains the chromosome arm (p or q) for each marker.  This is produced by the \code{\link{makeCytoband}} function.
}
  \item{k}{
A positive integer between 1 and m that represents the most aberrant marker.
}
}
\details{
The peeling procedure is detailed in Algorithm 2 of Bioinformatics (2011) 27(5) 678 - 685, but here we provide a brief overview.  By construction, marker \code{k} represents the most
aberrant gain (loss).  The peeling procedure rescales all copy number values in \code{x} that contribute to making marker \code{k} aberrant, so that after applying the peeling procedure marker
\code{k} is "null."  By construction, the rescaling procedure is restricted to entries in \code{x} that correspond to markers in the same chromosome arm as \code{k}.  This allows users to assess the 
statistical significance of multiple gains (losses) throughout the genome.
}
\value{
A list containing two components:  (1) the n by m matrix produced by applying the peeling algorithm to the matrix \code{x} at marker \code{k}, and (2) the peak interval around marker \code{k}, 
as described in Bioinformatics (2011) 27(5) 678 - 685.
}
\references{
Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.
}
\author{
Vonn Walter, Andrew B. Nobel, Fred A. Wright

Maintainer: <vwalter@email.unc.edu>
Vonn Walter
}
\keyword{manip}
\keyword{arith}
