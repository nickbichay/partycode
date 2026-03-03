\name{partycode}
\alias{partycode}
\title{Package to convert party ids}
\usage{
partycode(partyid, from = , to = )
}
\description{
Easily convert party codes from one dataset to another to facilitate merging. Returns a vector of new coding ids. Based on the partyfacts external dataset.
}
\arguments{
  \item{partyid}{Vector which contains party ids to be converted}
   \item{from}{Coding scheme of original party id (see partyfacts for compatible schemes)}
    \item{to}{New coding scheme to use (see partyfacts for compatible schemes)}
}
\author{Nicolas Bichay}
\examples{
#load("data")
#data$parlgov_id <- partycode(data$comparative_manifesto, from = "manifesto", to = "parlgov")
}
