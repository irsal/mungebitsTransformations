\name{renamer}
\alias{renamer}
\title{Rename columns in a dataframe}
\usage{
renamer(dataframe, replacements)
}
\arguments{
  \item{dataframe}{a data.frame.}

  \item{replacements}{a list of name replacements with keys
  old names and respective values new names.}
}
\description{
Rename columns in a dataframe
}
\examples{
renamer(iris, list('Sepal.Length' = 'seplen', 'Sepal.Width', = 'sepwid'))
}

