cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  intervertebral-disc-disorders-lumbar---primary:
    run: intervertebral-disc-disorders-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  intervertebral-disc-disorders-degeneration---primary:
    run: intervertebral-disc-disorders-degeneration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-lumbar---primary/output
  intervertebral-disc-disorders-revision---primary:
    run: intervertebral-disc-disorders-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-degeneration---primary/output
  myelopathy-intervertebral-disc-disorders---primary:
    run: myelopathy-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-revision---primary/output
  intervertebral-disc-disorders-percutan---primary:
    run: intervertebral-disc-disorders-percutan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: myelopathy-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-fenestration---primary:
    run: intervertebral-disc-disorders-fenestration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-percutan---primary/output
  other-intervertebral-disc-disorders---primary:
    run: other-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-fenestration---primary/output
  intervertebral-disc-disorders-resorption---primary:
    run: intervertebral-disc-disorders-resorption---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-hemilaminectomy---primary:
    run: intervertebral-disc-disorders-hemilaminectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-resorption---primary/output
  endoscopic-intervertebral-disc-disorders---primary:
    run: endoscopic-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-hemilaminectomy---primary/output
  intervertebral-disc-disorders-disordr---primary:
    run: intervertebral-disc-disorders-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: endoscopic-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-displacement---primary:
    run: intervertebral-disc-disorders-displacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-disordr---primary/output
  disc---primary:
    run: disc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-displacement---primary/output
  annular-intervertebral-disc-disorders---primary:
    run: annular-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: disc---primary/output
  intervertebral-disc-disorders-instrumentation---primary:
    run: intervertebral-disc-disorders-instrumentation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: annular-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-compression---primary:
    run: intervertebral-disc-disorders-compression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-instrumentation---primary/output
  thoracic-intervertebral-disc-disorders---primary:
    run: thoracic-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-compression---primary/output
  intervertebral-disc-disorders-specified---primary:
    run: intervertebral-disc-disorders-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: thoracic-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-prolapsed---primary:
    run: intervertebral-disc-disorders-prolapsed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-specified---primary/output
  intervertebral-disc-disorders-calcification---primary:
    run: intervertebral-disc-disorders-calcification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-prolapsed---primary/output
  intervertebral-disc-disorders-coblat---primary:
    run: intervertebral-disc-disorders-coblat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-calcification---primary/output
  radiculopathy-intervertebral-disc-disorders---primary:
    run: radiculopathy-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-coblat---primary/output
  cervical-intervertebral-disc-disorders---primary:
    run: cervical-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: radiculopathy-intervertebral-disc-disorders---primary/output
  biopsy-intervertebral-disc-disorders---primary:
    run: biopsy-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cervical-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-posterior---primary:
    run: intervertebral-disc-disorders-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: biopsy-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders---primary:
    run: intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-posterior---primary/output
  intervertebral-disc-disorders-decompre---primary:
    run: intervertebral-disc-disorders-decompre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-laser---primary:
    run: intervertebral-disc-disorders-laser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-decompre---primary/output
  intervertebral-disc-disorders-removal---primary:
    run: intervertebral-disc-disorders-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-laser---primary/output
  intervertebral-disc-disorders-replacement---primary:
    run: intervertebral-disc-disorders-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-removal---primary/output
  intervertebral-disc-disorders-fusion---primary:
    run: intervertebral-disc-disorders-fusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-replacement---primary/output
  intervertebral-disc-disorders-region---primary:
    run: intervertebral-disc-disorders-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-fusion---primary/output
  intervertebral-disc-disorders-costotransversectomy---primary:
    run: intervertebral-disc-disorders-costotransversectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-region---primary/output
  anterolateral-intervertebral-disc-disorders---primary:
    run: anterolateral-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-costotransversectomy---primary/output
  intervertebral-disc-disorders-interbody---primary:
    run: intervertebral-disc-disorders-interbody---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: anterolateral-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-schmorl---primary:
    run: intervertebral-disc-disorders-schmorl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-interbody---primary/output
  intervertebral-disc-disorders-procedure---primary:
    run: intervertebral-disc-disorders-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-schmorl---primary/output
  intervertebral-disc-disorders-graft---primary:
    run: intervertebral-disc-disorders-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-procedure---primary/output
  intervertebral-disc-disorders-joint---primary:
    run: intervertebral-disc-disorders-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-graft---primary/output
  intervertebral-disc-disorders-operation---primary:
    run: intervertebral-disc-disorders-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-joint---primary/output
  intervertebral-disc-disorders-destruction---primary:
    run: intervertebral-disc-disorders-destruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-operation---primary/output
  intervertebral-disc-disorders-discography---primary:
    run: intervertebral-disc-disorders-discography---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-destruction---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-discography---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
