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
* qualification[speciality][0]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E260 "ortopeedia"
* qualification[speciality][+]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E140 "gastroenteroloogia"
* qualification[speciality][+]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E500 "meditsiinigeneetika"
* qualification[kutse]
  * code.coding.system = "https://fhir.ee/CodeSystem/tervishoiutootaja-kutse" 
  * code = #E600 "arst"
//* qualification[+].code.coding.system = $erialad#E140 "gastroenteroloogia"
//* qualification[+].code.coding.system = $erialad#E500 "meditsiinigeneetika"
//* qualification[+].code.coding.system = $kutse#E600 "arst"
