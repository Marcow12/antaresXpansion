# Copy the test study in a temporary folder

path <- tempdir()
sourcedir <- system.file("testdata", package = "antaresXpansion")


# Hack: For some unknown reason, this script is executed at some point of
# the R CMD CHECK before package is correctly installed and tests actually run. 
# The following "if" prevents errors at this step

if (sourcedir != "") {
  
  if (Sys.info()['sysname'] == "Windows") {
    untar(file.path(sourcedir, "antares-test-study.tar.gz"), exdir = path, 
          extras = "--force-local")
  } else {
    untar(file.path(sourcedir, "antares-test-study.tar.gz"), exdir = path)
  }
  
  assign("study_path", file.path(path, "test_case"), envir = globalenv())
}


# create function  which test if a file exists
expect_file_exists <- function(path) { expect_true(file.exists(path)) }
