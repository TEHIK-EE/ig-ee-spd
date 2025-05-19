Instance: practitioner-nurse
InstanceOf: EESPDPractitioner
Usage: #example
Description: "Practitioner N99876"
* name.family = "Õde"
* name.given = "Kari"
* identifier[personalIdentifier] 
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "49001010015"
* identifier[specialistIdentifier]
  * system = "https://fhir.ee/sid/pro/est/pho"
  * value = "N99876"
* qualification[0].code = $kutse#N500 "õde"
* qualification[+].code = $erialad#N210 "diabeediõendus"
* qualification[+].code = $erialad#N800	"retseptiõigusega eriõde"

