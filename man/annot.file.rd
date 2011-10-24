\name{annot.file}
\alias{annot.file}
\docType{data}
\title{
A Cytoband Annotation Data Frame
}
\description{
This four-column data frame contains cytoband annotation data that is used by the \code{\link{makeCytoband}} function.  Each row corresponds to a distinct cytoband, and column 1 contains the chromosome 
number, column 2 contains the start position (in base pairs), column 3 contains the end position (in base pairs), and column 4 contains the cytoband name (e.g. p21.3).  Additional columns 
may be present, but they are not used.
}
\usage{data(annot.file)}
\format{
  A data frame with 811 observations on the following 4 variables.
  \describe{
    \item{\code{Chr}}{The chromosome for the cytoband}
    \item{\code{Start}}{The start position (in base pairs) for the cytoband}
    \item{\code{End}}{The end position (in base pairs) for the cytoband}
    \item{\code{Band}}{The cytoband name (e.g. p13.1)}
    }
}

\source{
The file cytoBand.txt.gz for the hg19 build can be downloaded from the UCSC Genome Browser at \url{http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/}.  The format of cytoBand.txt differs from that
of annot.file, but it can be used by the function \code{\link{makeCytoband}} if \code{reformat.cytoband = TRUE}.
}
\references{
Fujita P.A., Rhead B., Zweig A.S., et al., The UCSC Genome Browser database: update 2011, Nucleic Acids Res. (2010) 1 - 7 doi:10.1093/nar/gkq963.
}
\examples{
data(annot.file)
annot.file[1:10,]
#Produces the following output
#Chr    Start      End   Band
#1    1        0  2300000 p36.33
#2    1  2300000  5300000 p36.32
#3    1  5300000  7100000 p36.31
#4    1  7100000  9200000 p36.23
#5    1  9200000 12600000 p36.22
#6    1 12600000 16100000 p36.21
#7    1 16100000 20300000 p36.13
#8    1 20300000 23800000 p36.12
#9    1 23800000 27800000 p36.11
#10   1 27800000 30000000  p35.3
}
\keyword{datasets}
