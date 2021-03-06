% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{check_iucn_status}
\alias{check_iucn_status}
\title{Check whether inputs are valid IUCN status codes.}
\usage{
check_iucn_status(statuses)
}
\arguments{
\item{statuses}{A character vector of the IUCN Conservation Statuses.}
}
\value{
valid A character vector of valid items in \code{statuses}.
}
\description{
A warning is raised if a item in \code{statuses} is not found. This item
is removed from the vector. If none of the items are valid, raise an error.
}
\details{
Argument \code{statuses} is a vector containing one or several of the 
following:
\tabular{rl}{
 \code{"CR"} \tab Critically Endangered \cr
 \code{"EN"} \tab Endangered \cr
 \code{"VU"} \tab Vulnerable \cr
 \code{"NT"} \tab Near Threatened \cr
 \code{"LC"} \tab Least Concern \cr
 \code{"EX"} \tab Extinct \cr
 \code{"EW"} \tab Extinct in the Wild \cr
 \code{"DD"} \tab Data Deficient \cr
}
}
\examples{
\dontrun{
check_iucn_status("EN")
check_iucn_status(c("EN", "VU"))
# Gives a warning
check_iucn_status(c("EN", "BB"))
# Fails
check_iucn_status("ENX")
}

}
\author{
Joona Lehtomaki <joona.lehtomaki@gmail.com>
}

