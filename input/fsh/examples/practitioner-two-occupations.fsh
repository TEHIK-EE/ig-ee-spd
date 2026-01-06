Instance: practitioner-two-occupations
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner with two qualifications"
* language = #et
* name.family = "Hool"
* name.given = "Dajja"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49001010000"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "D99876"
* identifier[=].period.start = "1995-02-01"
* qualification[specialty][0].code.coding.system = $erialad
* qualification[specialty][=].code.coding.code = #E280
* qualification[specialty][=].code.coding.display = "patoloogia"
* qualification[specialty][=].period.start = "1996-12-02"
* qualification[specialty][=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[specialty][=].extension[THTcode].valueString = "D99876"
* qualification[specialty][1].code.coding.system = $erialad
* qualification[specialty][=].code.coding.code = #E210
* qualification[specialty][=].code.coding.display = "nefroloogia"
* qualification[specialty][=].period.start = "1998-01-01"
* qualification[specialty][=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[specialty][=].extension[THTcode].valueString = "D99876"
* qualification[profession][0].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[profession][=].code.coding.code = #11 
* qualification[profession][=].code.coding.display = "arst"
* qualification[profession][=].period.start = "1998-01-01"
* qualification[profession][=].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[profession][=].extension[THTcode].valueString = "D99876"
* qualification[profession][1].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[profession][=].code.coding.code = #33 
* qualification[profession][=].code.coding.display = "füsioterapeut"
