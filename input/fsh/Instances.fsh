Instance: TestPractitioner
InstanceOf: Practitioner
Title: "Test Practitioner"
* id = "TestPractitioner"
* communication[+].coding = #en

Instance: TestBundle
InstanceOf: Bundle
Title: "TestBundle"
* type = #searchset
* id = "TestBundle"
* entry[+].resource = TestPractitioner
