Profile: TumorSize
Parent:  Observation
Id: example-tumor-size
Title: "Tumor Size"
Description:  "Records the one to three dimensions of a tumor"


Instance: TumorSizeExample
InstanceOf: TumorSize
Description: "An example of a patient with a license to krill."
* component[+].code = http://loinc.org#33728-7
* status = #final
* code = http://loinc.org#33728-7