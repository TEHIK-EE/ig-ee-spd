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
* identifier[=].period.start = "1998-05-21"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "M99876"
* identifier[=].period.start = "1992-05-21"
* qualification[specialty][0].code.coding.system = $erialad 
* qualification[specialty][=].code.coding.code = #N110
* qualification[specialty][=].code.coding.display = "anesteesia-intensiivraviõendus"
* qualification[specialty][=].period.start = "1999-08-09"
* qualification[specialty][0].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[specialty][=].extension[THTcode].valueString = "N99876"
* qualification[specialty][1].code.coding.system = $erialad 
* qualification[specialty][=].code.coding.code = #N210
* qualification[specialty][=].code.coding.display = "diabeediõendus"
* qualification[specialty][=].period.start = "1999-08-09"
* qualification[specialty][1].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[specialty][=].extension[THTcode].valueString = "N99876"
* qualification[profession][0].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[profession][=].code.coding.code = #15 
* qualification[profession][=].code.coding.display = "õde"
* qualification[profession][=].period.start = "1999-05-21"
* qualification[profession][=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[profession][=].extension[THTcode].valueString = "N99876"
* qualification[profession][1].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[profession][=].code.coding.code = #17 
* qualification[profession][=].code.coding.display = "ämmaemand"
* qualification[profession][=].period.start = "1992-05-21"
* qualification[profession][=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[profession][=].extension[THTcode].valueString = "M99876"
