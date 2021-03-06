% Generated by roxygen2 (4.0.2): do not edit by hand
\name{mordm.animate}
\alias{mordm.animate}
\title{Animates the time series in a GIF.}
\usage{
mordm.animate(data, output = "animation.gif", indices = 1:length(data),
  transform = NULL, clean = TRUE, close = TRUE, loop = FALSE,
  scale = 0.1, ...)
}
\arguments{
\item{data}{the time series data}

\item{output}{the location where the animated GIF is saved}

\item{indices}{a vector indicating the indices in data that are displayed in
each frame}

\item{transform}{function that returns a transformation applied to each
frame (see \code{\link{spin3d}}), or the user matrix for a constant
projection}

\item{clean}{if \code{TRUE}, delete the temporary images once the GIF is
created}

\item{close}{if \code{TRUE}, close the RGL window when finished}

\item{loop}{if \code{TRUE}, loop infinitely; otherwise play the animation
once}

\item{scale}{amount to enlarge the plotting limits}

\item{...}{additional arguments passed to \code{\link{mordm.plot}}}
}
\description{
Animates the 3D scatter plot and saves the results to a GIF file.  Each
index in \code{indices} specifies the entry in the time series data that is
displayed at each frame.  Thus, to show all entries in succession, set
\code{indices=1:length(data)}, but to show a single entry across multiple
frames (e.g., if rotating) use \code{indices=rep(length(data), 50)}.  The
\code{transform} function is similar to the transformation function used by
\code{\link{play3d}}.  However, whereas the transformation in \code{play3d}
is based on the number of elapsed seconds, this method computes the transform
based on the frame number.  Thus, if you use \code{spin3d(rpm=1)}, then this
method will rotate the plot once every 60 frames (i.e., treating each frame
as one second).
}

