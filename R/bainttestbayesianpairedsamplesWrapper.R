#
# Copyright (C) 2013-2025 University of Amsterdam
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# This is a generated file. Don't change it!

#' Bain Paired Samples T-Test
#'
BainTTestBayesianPairedSamples <- function(
          data = NULL,
          version = "0.95",
          bayesFactorPlot = FALSE,
          bayesFactorType = "BF01",
          credibleInterval = 0.95,
          descriptives = FALSE,
          descriptivesPlot = FALSE,
          fraction = 1,
          hypothesis = "equalNotEqual",
          pairs = list(),
          plotHeight = 320,
          plotWidth = 480,
          seed = 424838) {

   defaultArgCalls <- formals(jaspBain::BainTTestBayesianPairedSamples)
   defaultArgs <- lapply(defaultArgCalls, eval)
   options <- as.list(match.call())[-1L]
   options <- lapply(options, eval)
   defaults <- setdiff(names(defaultArgs), names(options))
   options[defaults] <- defaultArgs[defaults]
   options[["data"]] <- NULL
   options[["version"]] <- NULL


   if (!jaspBase::jaspResultsCalledFromJasp() && !is.null(data)) {
      jaspBase::storeDataSet(data)
   }

   optionsWithFormula <- c("pairs")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   return(jaspBase::runWrappedAnalysis("jaspBain", "BainTTestBayesianPairedSamples", "BainTTestBayesianPairedSamples.qml", options, version, TRUE))
}