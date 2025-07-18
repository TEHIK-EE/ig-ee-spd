Instance: practitioner-nurse
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner N99876"
* name.family = "Õde"
* name.given = "Kari"
* identifier[personalIdentifier].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[personalIdentifier].value = "49001010015"
* identifier[specialistIdentifier].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[specialistIdentifier].value = "N99876"
/* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"*/
* qualification[speciality].code.coding[0].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality].code.coding[0].code = #N100
* qualification[speciality].code.coding[0].display = "Intensiivõendus"
* qualification[speciality].code.coding[+].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality].code.coding[+].code = #N300
* qualification[speciality].code.coding[+].display = "Terviseõendus"
 /*qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E140 "gastroenteroloogia"
* qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E500 "meditsiinigeneetika"*/
* qualification[kutse].code.coding[0].system = $tervishoiutootaja-kutse-VS
* qualification[kutse].code.coding[0].code = #E500 
* qualification[kutse].code.coding[0].display = "õde"
//* qualification[+].code.coding.system = $erialad#E140 "gastroenteroloogia"
//* qualification[+].code.coding.system = $erialad#E500 "meditsiinigeneetika"
//* qualification[+].code.coding.system = $kutse#E600 "arst"