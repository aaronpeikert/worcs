library(gert)
test_that("worcs project can be generated", {

  the_test <- "project"
  old_wd <- getwd()
  test_dir <- file.path(tempdir(), the_test)
  dir.create(test_dir)
  setwd(test_dir)

  on.exit(unlink(test_dir, recursive = TRUE), add = TRUE)

  worcs_project(
    path = "worcs_project",
    manuscript = "github_document",
    preregistration = "COS",
    add_license = "CC_BY_4.0",
    use_renv = FALSE,
    remote_repo = "bla"
  )
  list.files(file.path(test_dir, "worcs_project"))
  expect_true(file.exists("worcs_project/.worcs"))
  expect_true(file.exists("worcs_project/LICENSE"))
  expect_true(file.exists("worcs_project/README.md"))
  expect_true(file.exists("worcs_project/preregistration.Rmd"))
  expect_true(file.exists("worcs_project/manuscript/manuscript.Rmd"))
  expect_error(git_status("worcs_project"), NA)

  setwd(old_wd)
})
