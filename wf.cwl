cwlVersion: v1.0
class: Workflow

requirements:
- class: ScatterFeatureRequirement

inputs:
  infile: string[]


outputs: []


steps:
  index:
    run: hello.cwl
    in:
      message: infile
    scatter: message
    out: []
