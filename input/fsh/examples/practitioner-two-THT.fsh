Instance: practitioner-two-THT
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner with two THT codes"
* language = #et
* name.family = "Mai"
* name.given = "Mumm"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49001010000"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "N99876"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "M99876"
* qualification[speciality][0].code.coding.system = $erialad 
* qualification[speciality][=].code.coding.code = #N110
* qualification[speciality][=].code.coding.display = "anesteesia-intensiivraviõendus"
* qualification[speciality][0].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[speciality][=].extension[THTcode].valueString = "N99876"
* qualification[speciality][1].code.coding.system = $erialad 
* qualification[speciality][=].code.coding.code = #N210
* qualification[speciality][=].code.coding.display = "diabeediõendus"
* qualification[speciality][1].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[speciality][=].extension[THTcode].valueString = "N99876"
* qualification[proffession][0].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[proffession][=].code.coding.code = #15 
* qualification[proffession][=].code.coding.display = "õde"
* qualification[proffession][1].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[proffession][=].code.coding.code = #17 
* qualification[proffession][=].code.coding.display = "ämmaemand"
