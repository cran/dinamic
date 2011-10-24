\name{dinamic-package}
\alias{dinamic-package}
\alias{dinamic}
\docType{package}
\title{
Assessing the Statistical Significance of Recurrent DNA Copy Number Aberrations
}
\description{
The DiNAMIC method for assessing the statistical significance of recurrent DNA copy number aberrations was presented in Bioinformatics (2011) 27(5) 678 - 685.  This package contains
the functions required to perform both DiNAMIC's \emph{Quick Look} and \emph{Detailed Look} procedures.
}
\details{
\tabular{ll}{
Package: \tab dinamic\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-10-25\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}
DNA copy number gains and losses are commonly found in tumor tissue.  Collectively, we refer to these changes as DNA copy number aberrations (CNAs).  Because of underlying genomic
instability, many CNAs occur at random locations throughout the genome.  These CNAs are termed \emph{sporadic}, and they are not associated with the tumor phenotype.  Some CNAs provide 
a selective growth advantage, so one would expect to find these CNAs in multiple independent samples.  CNAs of the latter type are termed \emph{recurrent}, and distinguishing between
sporadic and recurrent CNAs is largely a statistical issue.

Gains and losses are analyzed separately, and both of DiNAMIC's main functions \code{\link{quickLook}} and \code{\link{detailedLook}} assess the statistical significance of recurrent 
gains (losses) using permutation-based null distributions.  The null distribution is produced by applying a novel \emph{cyclic shift} permutation scheme, and this is performed by the 
\code{\link{findNull}} function.  DiNAMIC's \code{\link{peeling}} function allows users to assess the significance of multiple gains (losses).  The significance of a new gain 
(loss) is assessed conditionally on having detected previous gains (losses).  The package includes DNA copy number data and associated marker information from the publicly available 
Wilms' tumor dataset of Natrajan et al. (J. Pathology (2006) 210:  49 - 58), as well as a cytoband annotation file. 
}
\author{
Vonn Walter, Andrew B. Nobel, Fred A. Wright

Maintainer: <vwalter@email.unc.edu>
Vonn Walter
}
\references{
Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.

Natrajan, R., Williams, R.D., Hing, S.N., et al., Array CGH profiling of favourable histology Wilms tumours reveals novel gains and losses associated with relapse, J. Pathology (2006) 210:  49 - 58.

Fujita P.A., Rhead B., Zweig A.S., et al., The UCSC Genome Browser database: update 2011, Nucleic Acids Res. (2010) 1 - 7 doi:10.1093/nar/gkq963.
}
\keyword{ package }

\examples{
data(wilms.data)
data(wilms.markers)
data(annot.file)
detailedLook(wilms.data, wilms.markers, annot.file, 100, 3)   
#Produces the following output:
#" 1"       "155656176" "R:A-MEXP-192:RP11-393K10" "196"  "0.01"
#"12"       " 38270107" "R:A-MEXP-192:RP11-519E12" "2294" "0.01"
#" 8"       "  4554176" "R:A-MEXP-192:RP11-337D8"  "1659" "0.01"

quickLook(wilms.data, wilms.markers, annot.file, 100, 3)   
#Produces the following output:
#" 1"       "155656176" "R:A-MEXP-192:RP11-393K10" "196"  "0.01"
#"12"       " 38270107" "R:A-MEXP-192:RP11-519E12" "2294" "0.01"
#" 8"       "  4554176" "R:A-MEXP-192:RP11-337D8"  "1659" "0.01"
}
