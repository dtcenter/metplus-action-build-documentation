#! /bin/sh

repository=${GITHUB_REPOSITORY}
ref=${GITHUB_REF}
tag=`basename ${ref}`
event_name=${GITHUB_EVENT_NAME}
html_tar_filename=${repository}/docs/_build/docs_html.tar.gz
pdf_tar_filename=${repository}/docs/_build/docs_pdf.tar.gz

echo GitHub repository: ${repository}
echo GitHub ref: ${ref}
echo GitHub event_name: ${event_name}

echo #########
echo current_dir: `pwd`
echo #########
echo ls: `ls`
echo #########
echo environment: `printenv`
printenv
echo #########

# Sub-routine for running a command and checking return status
function run_command() {

  # Print the command being called
  echo "CALLING: $1"

  # Run the command and store the return status
  $1
  STATUS=$?
        
  # Check return status
  if [[ ${STATUS} -ne 0 ]]; then
     echo "ERROR: Command returned with non-zero status ($STATUS): $1"
     exit ${STATUS}
  fi

  return ${STATUS}
}

###
# build the docs
###

run_command "cd docs"

run_command "make clean ${INPUT_TARGETS}"

exit 0

