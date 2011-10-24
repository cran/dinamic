\name{wilms.markers}
\alias{wilms.markers}
\docType{data}
\title{
aCGH Marker Data from Natrajan et al. (2006)
}
\description{
Natrajan et al. (J. Pathology (2006) 210:  49 - 58) used array comparative genomic hybridization to obtain genome-wide DNA copy number data from 97 Wilms' tumor samples at 3288 markers.
This data frame contains the marker information for the arrays.  Each row corresponds to a marker, and column 1 lists the chromosome number, column 2 is the marker position (in base pairs),
and column 3 is the marker name.
}
\usage{data(wilms.markers)}
\format{
  A data frame with 3288 observations on the following 3 variables.
  \describe{
    \item{\code{Chromosome}}{The chromosome for the given marker}
    \item{\code{Position}}{The position (in bp) for the given marker}
    \item{\code{Name}}{The name of the marker (e.g. R:A-MEXP-192:RP11-465B22)}
    }
}

\source{
http://www.ebi.ac.uk/arrayexpress/ accession number E-TABM-10.
}
\references{
Natrajan, R., Williams, R.D., Hing, S.N., et al., Array CGH profiling of favourable histology Wilms tumours reveals novel gains and losses associated with relapse, J. Pathology (2006) 210:  49 - 58.
}
\examples{
data(wilms.markers)
wilms.markers[1:10,]
#Produces the following output:
#Chromosome Position                      Name
#1           1  1036185  R:A-MEXP-192:RP11-465B22
#2           1  2078912 R:A-MEXP-192:RP11-82D16_1
#3           1  3588274 R:A-MEXP-192:RP11-62M23_2
#4           1  4366573 R:A-MEXP-192:RP11-111O5_1
#5           1  5877817    R:A-MEXP-192:RP11-49J3
#6           1  6062011  R:A-MEXP-192:RP11-426J21
#7           1  6293700   R:A-MEXP-192:RP11-51B04
#8           1  6896255  R:A-MEXP-192:RP11-402E10
#9           1  7041726 R:A-MEXP-192:RP11-60J11_1
#10          1  7653234  R:A-MEXP-192:RP11-338N10
}
\keyword{datasets}
