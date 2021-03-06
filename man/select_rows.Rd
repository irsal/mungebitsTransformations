\name{select_rows}
\alias{select_rows}
\title{Select rows in a dataframe.}
\usage{
select_rows(dataframe, rows, whole = FALSE)
}
\arguments{
  \item{dataframe}{a data.frame}

  \item{rows}{an atomic vector or function. Drop all but
  these rows.  If \code{rows} is a function, the rows will
  be selected based on the \code{whole} parameter. If
  \code{whole = TRUE}, the whole dataframe will be passed
  in, and the resulting row indices (character, numeric, or
  logical) will be selected. If \code{whole = FALSE} (the
  default) the function will be applied to each row and the
  result will be expected to be a logical, with only the
  rows returning \code{TRUE} being selected.}

  \item{whole}{a logical. See the \code{rows} parameter.
  The default is \code{FALSE}.}
}
\description{
Select rows in a dataframe.
}
\examples{
select_rows(iris, 1:10) # Select only first ten rows
select_rows(iris, c(T,F)) # Select only odd rows
iris2 <- iris; rownames(iris2) <- paste0("row", 1:nrow(iris2))
select_rows(iris, c("row10", "row51") # Select rows by name
}

