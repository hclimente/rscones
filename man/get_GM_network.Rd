% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networks.R
\name{get_GM_network}
\alias{get_GM_network}
\title{Get gene membership network.}
\usage{
get_GM_network(
  gwas,
  organism = 9606,
  snpMapping = snp2ensembl(gwas, organism),
  col_genes = c("snp", "gene")
)
}
\arguments{
\item{gwas}{A SnpMatrix object with the GWAS information.}

\item{organism}{Tax ID of the studied organism. The default is 9606 (human).}

\item{snpMapping}{A data.frame informing how SNPs map to genes. It contains 
minimum two columns: SNP id and a gene it maps to. Each row corresponds to 
one gene-SNP mapping. Unless column names are specified using 
\code{col_genes}, involved columns must be named \code{'snp'} and 
\code{'gene'}.}

\item{col_genes}{Optional, length-2 character vector with the names of the 
two columns involving the SNP-gene mapping. The first element is the column 
of the SNP, and the second is the column of the gene.}
}
\value{
An igraph network of the GM network of the SNPs.
}
\description{
Creates a network of SNPs where each SNP is connected as in the
\link[=get_GS_network]{GS} network and, in addition, to all the other SNPs 
pertaining to the same gene. Corresponds to the gene membership (GM) network 
described by Azencott et al.
}
\examples{
get_GM_network(minigwas, snpMapping = minisnpMapping)
}
\references{
Azencott, C. A., Grimm, D., Sugiyama, M., Kawahara, Y., &
Borgwardt, K. M. (2013). Efficient network-guided multi-locus association
mapping with graph cuts. Bioinformatics, 29(13), 171-179.
\url{https://doi.org/10.1093/bioinformatics/btt238}
}
