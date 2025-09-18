Instance: practitioner-specialist
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Healthcare specialist, speech therapist "
* name.family = "Keel"
* name.given = "Laes"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49001010001"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "T12345"
/* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"*/
* qualification[speciality].code.coding[0].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality].code.coding[0].code = #S180
* qualification[speciality].code.coding[0].display = "logopeed"
//* qualification[speciality].code.coding[+].system = "https://fhir.ee/ValueSet/erialad" 
//* qualification[speciality].code.coding[+].code = #E210
//* qualification[speciality].code.coding[+].display = "nefroloogia"
 /*qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E140 "gastroenteroloogia"
* qualification[=]
  * code.coding.system = "https://fhir.ee/CodeSystem/erialad" 
  * code = #E500 "meditsiinigeneetika"*/
* qualification[kutse].code.coding[0].system = $tervishoiutootaja-kutse-VS
* qualification[kutse].code.coding[=].code = #31
* qualification[kutse].code.coding[=].display = "füsioterapeut"
//* qualification[kutse].code.coding[+].system = $tervishoiutootaja-kutse-VS
//* qualification[kutse].code.coding[=].code = #33 
//* qualification[kutse].code.coding[=].display = "füsioterapeut"
//* qualification[+].code.coding.system = $erialad#E140 "gastroenteroloogia"
//* qualification[+].code.coding.system = $erialad#E500 "meditsiinigeneetika"
//* qualification[+].code.coding.system = $kutse#E600 "arst"