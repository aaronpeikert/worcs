% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worcs_project.R
\name{worcs_project}
\alias{worcs_project}
\title{Create new WORCS project}
\usage{
worcs_project(
  path = "worcs_project",
  manuscript = "APA6",
  preregistration = "COS",
  add_license = "CC_BY_4.0",
  use_renv = TRUE,
  remote_repo = "https",
  verbose = TRUE,
  ...
)
}
\arguments{
\item{path}{Character, indicating the directory in which to create the
'worcs' project. Default: 'worcs_project'.}

\item{manuscript}{Character, indicating what template to use for the
'rmarkdown' manuscript. Default: 'APA6'. Available choices include:
\code{"APA6", "github_document", "None", "ams_article", "asa_article",
"biometrics_article", "copernicus_article", "ctex", "elsevier_article",
"frontiers_article", "ieee_article", "joss_article", "jss_article",
"mdpi_article", "mnras_article", "oup_article", "peerj_article",
"plos_article", "pnas_article", "rjournal_article", "rsos_article",
"sage_article", "sim_article", "springer_article", "tf_article"}.
For more information about \code{APA6}, see the 'papaja' package, at
<https://github.com/crsh/papaja>.
For more information about \code{github_document}, see
\code{\link[rmarkdown]{github_document}}. The remaining formats are
documented in the 'rticles' package.}

\item{preregistration}{Character, indicating what template to use for the
preregistration. Default: 'COS'. Available choices include:
\code{"COS", "VantVeer", "Brandt", "AsPredicted", "None"}. For more
information, see, e.g., \code{\link[prereg]{cos_prereg}}.}

\item{add_license}{Character, indicating what license to include.
Default: 'CC_BY_4.0'. Available options include:
\code{"CC_BY_4.0", "CC_BY-SA_4.0", "CC_BY-NC_4.0", "CC_BY-NC-SA_4.0",
"CC_BY-ND_4.0", "CC_BY-NC-ND_4.0", "None"}. For more information, see
<https://creativecommons.org/licenses/>.}

\item{use_renv}{Logical, indicating whether or not to use 'renv' to make the
project reproducible. Default: TRUE. See \code{\link[renv]{init}}.}

\item{remote_repo}{Character, 'https' link to the 'GitHub' repository for
this project. If a valid 'GitHub' repository link is provided, a commit will
be made containing the 'README.md' file, and will be pushed to 'GitHub'.
Default: 'https'. For more information, see <http://github.com/>.}

\item{verbose}{Logical. Whether or not to print messages to the console
during project creation. Default: TRUE}

\item{...}{Additional arguments passed to and from functions.}
}
\value{
No return value. This function is called for its side effects.
}
\description{
Creates a new 'worcs' project. This function is invoked by
the 'RStudio' project template manager, but can also be called directly to
create a WORCS project through syntax or the console.
}
\examples{
the_test <- "worcs_template"
old_wd <- getwd()
dir.create(file.path(tempdir(), the_test))
get_sig <- tryCatch(git_signature_default(), error = function(e){
  gert::git_config_global_set(name = "user.name", value = "yourname")
  gert::git_config_global_set(name = "user.email", value = "yourname@email.com")
})
worcs_project(file.path(tempdir(), the_test, "worcs_project"),
              manuscript = "github_document",
              preregistration = "None",
              add_license = "None",
              use_renv = FALSE,
              remote_repo = "https")
setwd(old_wd)
unlink(file.path(tempdir(), the_test))
}
