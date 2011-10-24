\name{quickLook}
\alias{quickLook}
\title{
Assessing the Significance of Recurrent DNA Copy Number Aberrations
}
\description{
This function applies the "Quick Look" version of DiNAMIC's cyclic shift procedure to assess the statistical significance of recurrent DNA copy number aberrations.  The statistical significance
of recurrent gains (\code{gain.loss} = "gain") or recurrent losses (\code{gain.loss} = "loss") is assessed using an empirical null distribution produced by \code{num.perms} cyclic shifts of \code{x}.
}
\usage{
quickLook(x, marker.data, annot.file, num.perms, num.iters, gain.loss = "gain", 
  reformat.annot = FALSE, random.seed = NULL)
}
\arguments{
  \item{x}{
An n by m numeric matrix containing DNA copy number data from n subjects at m markers.
}
  \item{marker.data}{
A dataframe containing marker position data for markers in the autosomes.  Column 1 contains the chromosome number for each marker, and column 2 contains the position (in base pairs)
for each markers.  Additional columns, if present, represent information about the markers (e.g. probe names).
}
  \item{annot.file}{
A cytoband annotation dataframe.  Each row corresponds to a distinct cytoband, and column 1 contains the chromosome number, column 2 contains the start position (in base pairs),
column 3 contains the end position (in base pairs), and column 4 contains the cytoband name (e.g. p21.3).  Additional columns may be present, but they are not used.
}
  \item{num.perms}{
A positive integer that represents the number of cyclic shifts used to create the empirical distribution.
}
  \item{num.iters}{
A positive integer that represents the number of distinct gain (loss) loci that will be assessed.  See "Details" for more information.
}
  \item{gain.loss}{
A character string that indicates whether recurrent gains (\code{gain.loss = "gain"}) or recurrent losses (\code{gain.loss = "loss"}) are assessed.
}
  \item{reformat.annot}{
A logical value that indicates whether annot.file needs to be reformatted (default = FALSE).  See the "Note" section of \code{\link{makeCytoband}} for additional information.
}
  \item{random.seed}{
An optional random seed (default = NULL).
}
}
\details{
This function applies the "Quick Look" version of DiNAMIC's cyclic shift procedure to assess the statistical significance of recurrent DNA copy number aberrations.  Either recurrent gains 
(\code{gain.loss = "gain"}) or recurrent losses (\code{gain.loss = "loss"}) are assessed using a null distribution based on num.perms cyclic shifts of \code{x}.  Iterative calls to DiNAMIC's peeling procedure
(implemented here in the \code{\link{peeling}} function) allow users to assess the statistical significance of num.iters distinct gains (losses).  As noted in Bioinformatics (2011) 27(5) 678 - 685,
the "Quick Look" procedure calculates the null distribution once, and the same distribution is used to assess the statistical significance of the most aberrant gain or loss after each iteration
of the peeling procedure.  This approach is less computationally intensive than "Detailed Look" because the null distribution is only computed once, but simulations suggest that it provides
less power to detect recurrent gains (losses).  The resulting p-values are corrected for multiple comparisons because the null distribution is based on computing \code{max(colSums(x))} or 
\code{min(colSums(x))}.
}
\value{
A matrix with \code{num.iters} rows.  The entries of each row correspond to the marker that is being assessed.  More specifically, the entries are (1) the chromosome number,
(2) the marker position (in base pairs), (3) additional marker information present in marker.data, (4) the marker number, and (5) the p-value obtained from the null distribution,
(6) the endpoints of the peak interval (in base pairs), as described in Bioinformatics (2011) 27(5) 678 - 685.
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
data(wilms.data)
data(wilms.markers)
data(annot.file)
quickLook(wilms.data, wilms.markers, annot.file, 100, 3)   
#Produces the following output:
#" 1"       "155656176" "R:A-MEXP-192:RP11-393K10" "196"  "0.01"
#"12"       " 38270107" "R:A-MEXP-192:RP11-519E12" "2294" "0.01"
#" 8"       "  4554176" "R:A-MEXP-192:RP11-337D8"  "1659" "0.01"
}
\keyword{arrays}
\keyword{nonparametric}
