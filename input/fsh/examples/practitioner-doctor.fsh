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
* identifier[=].period.start = "1999-12-01"
* qualification.extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification.extension[THTcode].valueString = "D99876"
* qualification[0].code.coding.system = $erialad
* qualification[=].period.start = "1999-12-01"
* qualification[=].code.coding.code = #E260 
* qualification[=].code.coding.display = "ortopeedia"
* qualification[=].period.start = "2001-12-01"
* qualification[+].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[=].code.coding.code = #E600 
* qualification[=].code.coding.display = "arst"
* qualification[=].period.start = "1999-12-01"
* qualification[=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[=].extension[THTcode].valueString = "D99876"

