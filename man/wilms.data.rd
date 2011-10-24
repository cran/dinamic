\name{wilms.data}
\alias{wilms.data}
\docType{data}
\title{
DNA Copy Number Data from Natrajan et al. (2006)
}
\description{
Natrajan et al. (J. Pathology (2006) 210:  49 - 58) used array comparative genomic hybridization to obtain genome-wide DNA copy number data from 97 Wilms' tumor samples at 3288 markers.
This matrix contains the DNA copy number data after applying the bias-correction procedure outlined in Bioinformatics (2011) 27(5) 678 - 685.  Each row corresponds to DNA copy number
from one subject at 3288 markers, while each column contains DNA copy number data for 97 subjects at one marker.
}
\usage{data(wilms.data)}
\format{
  A 97 by 3288 numeric matrix containing DNA copy number data, as described above.
}

\source{
http://www.ebi.ac.uk/arrayexpress/ accession number E-TABM-10.
}
\references{
Natrajan, R., Williams, R.D., Hing, S.N., et al., Array CGH profiling of favourable histology Wilms tumours reveals novel gains and losses associated with relapse, J. Pathology (2006) 210:  49 - 58.

Walter, V., Nobel, A.B., and Wright, F.A., DiNAMIC:  a method to identify recurrent DNA copy number aberrations in tumors, Bioinformatics (2011) 27(5) 678 - 685.
}
\keyword{datasets}
