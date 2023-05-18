Profile: TumorSize
Parent:  Observation
Id: example-tumor-size
Title: "Tumor Size"
Description:  "Records the one to three dimensions of a tumor"
* code = http://loinc.org#21889-1 //"Size Tumor"
// other rules omitted
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
// Contains rule
* component contains tumorLongestDimension 1..1 and tumorOtherDimension 0..2
// Set properties of each slice
* component[tumorLongestDimension] ^short = "Longest tumor dimension"
* component[tumorLongestDimension] ^definition = "The longest tumor dimension in cm or mm."
* component[tumorLongestDimension].code = http://loinc.org#33728-7 // "Size.maximum dimension in Tumor"
* component[tumorLongestDimension].value[x] only Quantity
* component[tumorLongestDimension].valueQuantity from TumorSizeUnitsVS (required)   // value set defined elsewhere
* component[tumorOtherDimension] ^short = "Other tumor dimension(s)"
* component[tumorOtherDimension] ^definition = "The second or third tumor dimension in cm or mm."
* component[tumorOtherDimension] ^comment = "Additional tumor dimensions should be ordered from largest to smallest."
* component[tumorOtherDimension].code = http://loinc.org#33729-5 // "Size additional dimension in Tumor"
* component[tumorOtherDimension].value[x] only Quantity
* component[tumorOtherDimension].valueQuantity from TumorSizeUnitsVS (required)


Instance: TumorSizeExample
InstanceOf: TumorSize
Description: "An example of an Observation with a license to krill."
* component[+].code = http://loinc.org#33728-7