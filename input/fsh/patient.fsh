// This is a simple example of a FSH file (test).
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* subject = Reference(mCODEPatientExample01)

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
  sdfsdf
  sdf
  sdf

Alias: $SCT = http://snomed.info/sct
Alias: $RaceAndEthnicityCDC = urn:oid:2.16.840.1.113883.6.238
Alias: obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

Extension: USCoreBirthSexExtension
Id:   us-core-birthsex
Title:  "US Core Birth Sex Extension"
Description: "A code classifying the person's sex assigned at birth as specified by the [Office of the National Coordinator for Health IT (ONC)](https://www.healthit.gov/newsroom/about-onc). This extension aligns with the C-CDA Birth Sex Observation (LOINC 76689-9)."
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only code
* value[x] from http://hl7.org/fhir/us/core/ValueSet/birthsex (required)