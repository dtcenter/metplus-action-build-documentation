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

echo current_dir: `pwd`
echo environment:
printenv

###
# build the docs
###

cd ${GITHUB_WORKSPACE}/docs

ls

exit 0

# TODO: Update the actual content here

