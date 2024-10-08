% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bfs_muni_correspondances.R
\name{get_correspondances}
\alias{get_correspondances}
\title{Get municipalities correspondances}
\usage{
get_correspondances(
  start_period = Sys.Date(),
  end_period = Sys.Date(),
  include_unmodified = NULL,
  include_territory_exchange = NULL,
  escape_chars = NULL,
  name_repair = "unique"
)
}
\arguments{
\item{start_period}{Start of requested period}

\item{end_period}{End of requested period}

\item{include_unmodified}{Include municipalities that have not undergone any changes}

\item{include_territory_exchange}{Include/exclude records that only concern
territory changes.}

\item{escape_chars}{Defines forbidden characters in the response and their
respective escape characters. For example, with the value "/( ).(_)",
all slashes in the response will be replaced with a space while periods are
replaced with underscore.}

\item{name_repair}{\code{\link[readr]{read_csv}} is used internally and
ensures column names are "unique" using the "name_repeir" argument.}
}
\value{
a data.frame/tibble
}
\description{
the correspondences indicate for each municipality existing at the
\code{start_period} time, which is/are the corresponding municipality(ies) at the
\code{end_period} time.
}
\examples{
\donttest{
get_correspondances(start_period = "2024-01-01", end_period = "2024-08-01")
}

}
