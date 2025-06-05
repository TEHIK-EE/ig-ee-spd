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
* qualification[0].code = $kutse#E600 "arst"
* qualification[+].code = $erialad#E140 "gastroenteroloogia"
* qualification[+].code = $erialad#E500 "meditsiinigeneetika"
* qualification[+].code = $erialad#E260 "ortopeedia"
