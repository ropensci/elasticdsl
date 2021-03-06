% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geoshape.R
\name{geoshape}
\alias{geoshape}
\alias{geoshape_}
\title{geoshape dsl}
\usage{
geoshape(.obj = list(), ..., field = NULL)

geoshape_(.obj = list(), ..., .dots, field = NULL)
}
\arguments{
\item{.obj}{An index object. If nothing passed defaults to all indices, equivalent to
doing e.g., \code{localhost:9200/_search}}

\item{...}{Further args passed on}

\item{field}{Explanation...}

\item{.dots}{Explanation...}
}
\description{
geoshape dsl
}
\examples{
\dontrun{
elastic::connect(errors = "complete")

## point
index("geoshape") \%>\%
   geoshape(field = "location", type = "envelope", coordinates = list(c(-30, 50), c(30, 0))) \%>\%
   n()

## circle and radius
index("geoshape") \%>\%
   geoshape(field = "location", type = "circle", radius = "2000km",
            coordinates = c(-10, 45)) \%>\%
   n()

index("geoshape") \%>\%
   geoshape(field = "location", type = "circle", radius = "5000km",
            coordinates = c(-10, 45)) \%>\%
   n()

## polygon
coords <- list(c(80.0, -20.0), c(-80.0, -20.0), c(-80.0, 60.0), c(40.0, 60.0), c(80.0, -20.0))
index("geoshape") \%>\%
   geoshape(field = "location", type = "polygon", coordinates = coords) \%>\%
   n()
}
}
