Instance: practitioner-doctor
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner D99876"
* language = #et
* name.family = "Arst"
* name.given = "Toktor"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "38201010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"
* qualification[degree].code.coding.system = $erialad
* qualification[degree].code.coding.code = #E260 
* qualification[degree].code.coding.display = "ortopeedia"
* qualification.extension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification.extension[=].valueString = "D99876"
//* qualification[degree][+].code.coding.system = "https://fhir.ee/ValueSet/erialad" 
//* qualification[degree][=].code.coding.code = #E140 
//* qualification[degree][=].code.coding.display = "gastroenteroloogia"
* qualification[proffession].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[proffession].code.coding.code = #E600 
* qualification[proffession].code.coding.display = "arst"

