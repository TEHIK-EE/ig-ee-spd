Instance: practitioner-doctor
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner D99876"
* name.family = "Arst"
* name.given = "Toktor"
* identifier[personalIdentifier] 
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "38201010015"
* identifier[specialistIdentifier]
  * system = "https://fhir.ee/sid/pro/est/pho"
  * value = "D99876"
* qualification[0].code.coding = $erialad#E260 "ortopeedia"
* qualification[+].code.coding = $erialad#E140 "gastroenteroloogia"
* qualification[+].code.coding = $erialad#E500 "meditsiinigeneetika"
* qualification[+].code.coding = $kutse#E600 "arst"
