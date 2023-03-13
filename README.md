# metplus-action-build-documentation
Build Sphinx-based documentation

## Inputs - Required

## `targets`

Space-separated list of targets (`html`, `latexpdf`)

## Outputs

None.

## Example usage

Create a new workflow YAML file in .github/workflows and add the following:

```
name: Add checksum to release

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
      - uses: dtcenter/metplus-action-build-documentation@v1
        with:
          targets: 'html latexpdf'
```
