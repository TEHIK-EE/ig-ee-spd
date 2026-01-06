/*Instance: practitioner-specialist
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Healthcare specialist, speech therapist "
* language = #et
* name.family = "Keel"
* name.given = "Laes"
* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[=].value = "49001010001"
* identifier[+].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "T12345"
* qualification[specialty].code.coding[0].system = "https://fhir.ee/ValueSet/erialad" 
* qualification[specialty].code.coding[0].code = #S180
* qualification[specialty].code.coding[0].display = "logopeed"
* qualification[kutse].code.coding[0].system = $tervishoiutootaja-kutse-VS
* qualification[kutse].code.coding[=].code = #31
* qualification[kutse].code.coding[=].display = "logopeed"
*/