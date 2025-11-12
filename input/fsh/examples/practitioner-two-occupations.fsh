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
* qualification[speciality][0].code.coding.system = $erialad
* qualification[speciality][=].code.coding.code = #E280
* qualification[speciality][=].code.coding.display = "patoloogia"
* qualification[speciality][0].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[speciality][=].extension[THTcode].valueString = "D99876"
* qualification[speciality][1].code.coding.system = $erialad
* qualification[speciality][=].code.coding.code = #E210
* qualification[speciality][=].code.coding.display = "nefroloogia"
* qualification[speciality][1].extension[THTcode].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-tht-code"
* qualification[speciality][=].extension[THTcode].valueString = "D99876"
* qualification[proffession][0].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[proffession][=].code.coding.code = #11 
* qualification[proffession][=].code.coding.display = "arst"
* qualification[proffession][+].code.coding.system = $tervishoiutootaja-kutse-VS
* qualification[proffession][=].code.coding.code = #33 
* qualification[proffession][=].code.coding.display = "füsioterapeut"
