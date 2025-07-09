/*Instance: practitioner-doctor
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner D99876"
* name.family = "Arst"
* name.given = "Toktor"
* identifier[personalIdentifier].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[personalIdentifier].value = "38201010015"
* identifier[specialistIdentifier].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[specialistIdentifier].value = "D99876"
/* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"
* qualification[0].code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
* qualification[0].code.coding.code = #E260 "ortopeedia"
/* qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E140 "gastroenteroloogia"
* qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E500 "meditsiinigeneetika"
* qualification[+].code.coding.system = $tervishoiutootaja-kutse 
* qualification[+].code.coding.code = #E600 "arst"
//* qualification[+].code.coding.system = $erialad#E140 "gastroenteroloogia"
//* qualification[+].code.coding.system = $erialad#E500 "meditsiinigeneetika"
//* qualification[+].code.coding.system = $kutse#E600 "arst"
*/