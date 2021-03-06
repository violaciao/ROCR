% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\docType{data}
\name{ROCR.simple}
\alias{ROCR.simple}
\title{Data set: Simple artificial prediction data for use with ROCR}
\format{
A two element list. The first element, \code{ROCR.simple$predictions}, is a
vector of numerical predictions. The second element,
\code{ROCR.simple$labels}, is a vector of corresponding class labels.
}
\usage{
data(ROCR.simple)
}
\description{
A mock data set containing a simple set of predictions and corresponding
class labels.
}
\examples{
# plot a ROC curve for a single prediction run
# and color the curve according to cutoff.
library(ROCR)
data(ROCR.simple)
pred <- prediction(ROCR.simple$predictions, ROCR.simple$labels)
pred
perf <- performance(pred,"tpr","fpr")
perf
plot(perf,colorize=TRUE)
}
\keyword{datasets}
