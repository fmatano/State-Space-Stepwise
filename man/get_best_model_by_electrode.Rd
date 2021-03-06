% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build_model_functions.R
\name{get_best_model_by_electrode}
\alias{get_best_model_by_electrode}
\title{Computing the best sc model for a single electrodee}
\usage{
get_best_model_by_electrode(ii, electrodes, all_risk, iter, old_risk, Qm1_tot,
  eqs_df, mle, model, new_model, int_dec, time_dec, forward_mse, ztrain, ztest,
  final_model, is_sc, wf_mom, wf_feat, transf_selected)
}
\arguments{
\item{ii}{iterator for the electrode vector}

\item{electrodes}{vector of the electrodes randomly ordered}

\item{all_risk}{vector with all risks computed so far}

\item{iter}{iteration}

\item{old_risk}{risk at the previous stage, used to compare new equations}

\item{Qm1_tot}{inverse of full model, if mle}

\item{eqs_df}{data frame with equation info}

\item{mle}{whether mle or kf}

\item{model}{current model}

\item{new_model}{list with history of all models tried}

\item{int_dec}{vector of integer on when the trial starts}

\item{time_dec}{vector of time of the intervals}

\item{forward_mse}{is history with all past forward mse values}

\item{ztrain}{neural data in the training set}

\item{ztest}{neural data in the testing set}

\item{final_model}{list with history of all successfull models iter by iter}

\item{is_sc}{whether the best model should run on spike counts, default = TRUE}

\item{wf_mom}{wf moment to consider, only if is_sc is FALSE}

\item{transf_selected}{transformation selected 1 linear, 2 ace, 3 sqrt, NULL all}

\item{wf_key}{wf key to consider, only if is_sc is FALSE}
}
\value{
a list of vectors update and needed for next iteration
}
\description{
This function computes the best sc model for a single electrode, trying to
substute the equation for a specificic electrode with all the 13*3 equations
that belong to the same electrode
}
