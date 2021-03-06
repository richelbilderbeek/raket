test_that("use", {

  raket_params <- create_test_raket_params()
  filename <- create_pbd_sim_out_file(raket_params)
  expect_equal(filename, raket_params$pbd_sim_out_filename)
  beautier::check_file_exists(raket_params$pbd_sim_out_filename)

  pbd_output <- readRDS(raket_params$pbd_sim_out_filename)
  expect_silent(becosys::check_pbd_sim_out(pbd_output))
})
