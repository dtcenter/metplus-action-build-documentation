# metplus-action-build-documentation
Build Sphinx-based documentation. Report bad status for any documentation build errors or warnings.

# Environment

This action runs within the `dtcenter/metplus-envs:metplus-action-build-documentation` environment.
The following commands were run to create it:
```
docker build -t dtcenter/metplus-envs:metplus-action-build-documentation -f Dockerfile.env .
docker push dtcenter/metplus-envs:metplus-action-build-documentation
```

## Inputs - Optional 

## `targets`

Space-separated list of targets (`html`, `latexpdf`)
Default is `html`.

## Outputs

The documents rendered as `html` and/or `latexpdf` are uploaded as artifacts.

## Example usage

Create a new workflow YAML file in .github/workflows and add the following:

```
name: Documentation

on:
  pull_request:
    types: [opened, reopened, synchronize]
  workflow_dispatch:
    inputs:
      targets:
        description: 'Documentation targets'
        default: 'html'
        type: string

jobs:
  documentation:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: dtcenter/metplus-action-build-documentation@v1
        with:
          targets: 'html latexpdf'
```
