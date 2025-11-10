Instance: practitioner-nurse
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner N99876"
* language = #et
* name.family = "Õde"
* name.given = "Kari"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49001010015"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N99876"
/* qualification[speciality].code.coding[0].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality].code.coding[0].code = #N100
* qualification[speciality].code.coding[0].display = "Intensiivõendus"
* qualification[speciality].code.coding[+].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[speciality].code.coding[+].code = #N300
* qualification[speciality].code.coding[+].display = "Terviseõendus"
* qualification[kutse].code.coding[0].system = $tervishoiutootaja-kutse-VS
* qualification[kutse].code.coding[0].code = #E500 
* qualification[kutse].code.coding[0].display = "õde"
*/
* qualification[0].code.coding.system = $erialad
* qualification[0].code.coding.code = #N100
* qualification[0].code.coding.display = "Intensiivõendus"
* qualification[1].code.coding.system = $erialad
* qualification[1].code.coding.code = #N300
* qualification[1].code.coding.display = "Terviseõendus"
* qualification.extension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification.extension[=].valueString = "N99876"
* qualification[+].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[=].code.coding.code = #E50000
* qualification[=].code.coding.display = "õde"