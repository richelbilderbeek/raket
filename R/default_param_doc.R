#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param alignment_params parameters for creating an alignment,
#'   as can be created by \code{\link[pirouette]{create_alignment_params}}
#' @param crown_age the crown age of the phylogeny
#' @param erg extinction rate of a good species
#' @param ergs extinction rates for good species
#' @param eri extinction rate of an incipient species
#' @param eris extinction rates for incipient species
#' @param experiment_type type of experiment,
#'   must a member of \code{\link{rkt_get_experiment_types}}
#' @param filename name of the file
#' @param max_n_params the maximum number of parameters created. Set to a lower
#'   value in debugging
#' @param mcmc one mcmc object,
#'   as returned by \code{\link[beautier]{create_mcmc}}
#' @param mcmc_chain_length length of the MCMC chain, in
#'   number of states
#' @param n_replicates number of replicates per biological parameter set
#' @param pbd_params a PBD parameter set,
#'   as returned by \code{\link[becosys]{create_pbd_params}}
#' @param pbd_sim_out_filename path to file to save the PBD simulation's
#'   output to. Data will be stored as R Data (\code{.RDa}).
#' @param pir_params \code{pirouette} parameter set,
#'   as created by \link[pirouette]{create_pir_params}
#' @param project_folder_name name of project folder
#' @param quantile the quantile, a value from, and including, zero to one
#' @param raket_params \code{raket} parameters for one experiment,
#'   as can be created by \code{\link{create_raket_params}}
#' @param raket_paramses a list of \code{raket_params},
#'   as created by \code{\link{create_general_params_set}}
#'   or \code{\link{create_sampling_params_set}}
#' @param sampling_method method how the incipient species representing a
#'   species is picked. Must be in \link{rkt_get_sampling_methods}.
#' @param scr speciation completion rate
#' @param scrs speciation completion rates
#' @param sequence_length a DNA sequence length, in base pairs
#' @param sir speciation initiation rate of both
#'   a good species and an incipient species
#' @param sirg speciation initiation rate of a good species
#' @param sirgs speciation initiation rates of good species
#' @param siri speciation initiation rate of an incipient species
#' @param siris speciation initiation rates of incipient species
#' @param stem_age stem age. Set either the stem age or the crown age.
#' @param true_tree_filename path to the file to store the true
#'   phylogentic tree to. Tree will be stored in Newick format.
#' @param twinning_params parameters for creating a twin tree,
#'   as can be created by \code{\link[pirouette]{create_twinning_params}}
#' @param verbose if TRUE, additional information is displayed, that
#'   is potentially useful in debugging
#' @author Richel J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  alignment_params,
  crown_age,
  erg, ergs,
  eri, eris,
  experiment_type,
  filename,
  max_n_params,
  mcmc,
  mcmc_chain_length,
  n_replicates,
  pbd_params,
  pbd_sim_out_filename,
  pir_params,
  project_folder_name,
  quantile,
  raket_params,
  raket_paramses,
  sampling_method,
  scr, scrs,
  sequence_length,
  sir,
  sirg, sirgs,
  siri, siris,
  stem_age,
  true_tree_filename,
  twinning_params,
  verbose
) {
  # Nothing
}
