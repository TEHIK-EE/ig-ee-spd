Instance: practitionerrole-nurse
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole N99876"
* language = #et
* active = true
* period.start = "2005-01-01"
* practitioner = Reference(Practitioner/practitioner-nurse)
* organization = Reference(Organization/organization-perh123)
* contact.telecom.system = #phone
* contact.telecom.value = "+372 444555" 
//* identifier.system = "https://fhir.ee/sid/pro/est/pho"
* identifier.value = "N99876"
* identifier.system = $practitioner-identifier-domain-VS
* code.coding[tor].system = $occupation
* code.coding[tor].code = #22210502
* code.coding[tor].display = "Õde"
//* code.coding.value = "doctor"
//* location = Reference(Location/location-taastusravi)
* contact.telecom.value = "5555555"
* contact.telecom.system = #phone
