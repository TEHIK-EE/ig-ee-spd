Instance: practitioner-doctor
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner D99876"
* name.family = "Arst"
* name.given = "Toktor"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"
/* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"*/
* qualification[speciality][0].code.coding[0].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality][0].code.coding[0].code = #E260 
* qualification[speciality][0].code.coding[0].display = "ortopeedia"
* qualification[speciality][+].code.coding[+].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality][+].code.coding[+].code = #E140 
* qualification[speciality][+].code.coding[+].display = "gastroenteroloogia"
 /*qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E140 "gastroenteroloogia"
* qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E500 "meditsiinigeneetika"*/
* qualification[kutse].code.coding[0].system = $tervishoiutootaja-kutse-VS
* qualification[kutse].code.coding[0].code = #E600 
* qualification[kutse].code.coding[0].display = "arst"
//* qualification[+].code.coding.system = $erialad#E140 "gastroenteroloogia"
//* qualification[+].code.coding.system = $erialad#E500 "meditsiinigeneetika"
//* qualification[+].code.coding.system = $kutse#E600 "arst"