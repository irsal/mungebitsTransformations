\name{standard_column_format}
\alias{standard_column_format}
\title{Converts a logical / numeric / character vector or a function
into a character vector of column names for a dataframe.}
\usage{
standard_column_format(cols, dataframe)
}
\arguments{
  \item{cols}{a vector or function. If logical / numeric /
  character vector, it will attempt to find those columns
  matching these values. If \code{cols} is a function, it
  will apply this function to each column of the dataframe
  and return the names of columns for which it was
  \code{TRUE}.}

  \item{dataframe}{a reference dataframe. Necessary for
  computing the column names if a numeric or logical vector
  is specified for \code{cols}.}
}
\description{
If a function is provided, it will be applied to each
column of the dataframe and must return a logical; those
with resulting value TRUE will be returned as a character
vector.
}
\examples{
standard_column_format(c(1,5), iris)  # c('Sepal.Length', 'Species')
standard_column_format(c(T,F,F,F,T), iris)  # c('Sepal.Length', 'Species')
standard_column_format('Sepal.Length', iris)  # 'Sepal.Length'
}

