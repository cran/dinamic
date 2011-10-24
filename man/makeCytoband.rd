\name{makeCytoband}
\alias{makeCytoband}
\title{
Find the Chromosome Arm for Each Marker
}
\description{
This function is used internally by DiNAMIC's \code{\link{peeling}} function.  It finds the chromosome arm (p or q) for each marker in the matrix \code{marker.data}.
}
\usage{
makeCytoband(marker.data, annot.file, reformat.annot = FALSE)
}

\arguments{
  \item{marker.data}{
A two-column numeric matrix of marker position data for markers in the autosomes.  Column 1 contains the chromosome number for each marker, and column 2 contains the position (in base pairs)
for each markers.  This is a submatrix of the marker position matrix used by \code{\link{quickLook}} and \code{\link{detailedLook}}.
}
  \item{annot.file}{
A dataframe containing cytoband annotation for the autosomes.  Each row corresponds to a distinct cytoband, and column 1 contains the chromosome number, column 2 contains the start 
position (in base pairs), column 3 contains the end position (in base pairs), and column 4 contains the cytoband name (e.g. p21.3).  Additional columns may be present, but they are not used.
}
  \item{reformat.annot}{
A logical value that indicates whether \code{annot.file} needs to be reformatted.  See "Note" for additional information.
}
}
\details{
DiNAMIC's peeling procedure is detailed in Bioinformatics (2011) 27(5) 678 - 685, and it is performed by the \code{\link{peeling}} function.  By construction, the peeling procedure only affects markers
in a given chromosome arm.  This function is used internally by the \code{\link{peeling}} function to restrict the peeling procedure to the chromosome arm containing the marker that corresponds to
\code{max(colSums(x))}.
}
\value{
A character vector of length m, where m is the number of markers.
}
\references{
Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.
}
\author{
Vonn Walter, Andrew B. Nobel, Fred A. Wright

Maintainer: <vwalter@email.unc.edu>
Vonn Walter
}

\note{
A four-column cytoband annotation file called \code{annot.file} is included in the package.  However, users who wish to use other cytoband annotation files can 
download five-column annotation files from the UCSC Genome Browser.  For example, the file cytoBand.txt.gz for the hg19 build can be found at
http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/.  The entries in the first column of cytoBand.txt do not have the correct form, and this file also
contains cytoband annotation data for the X and Y chromosomes.  Thus users should change \code{reformat.annot} to TRUE when using these files.
}

\examples{
data(wilms.markers)
data(annot.file)
wilms.pq = makeCytoband(wilms.markers, annot.file)
#A character vector of length 3288, and each entry is either
#"p" or "q", depending on the chromosome arm of the given marker.
table(wilms.pq)
#Produces the following output:
#wilms.pq
%   p    q 
#1147 2141 
}
\keyword{manip}
