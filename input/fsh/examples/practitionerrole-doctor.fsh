Instance: practitionerrole-doctor
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole D99876"
* language = #et
* active = true
* identifier.value = "D99876"
* identifier.system = $practitioner-identifier-domain-VS
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-doctor)
* organization = Reference(Organization/organization-perh123)
* contact.telecom.system = #phone
* contact.telecom.value = "+372 444555" 
* code.coding[tor] = $occupation#22120901 "Kardioloog"
//* code.coding[role].code = #doctor
//* code.coding[role].display = "Arst"
//* code.coding.value = "doctor"
* specialty = $erialad#E170 "Kardioloogia" // "https://fhir.ee/CodeSystem/erialad" //NB! EEBases juba valesti see CS lõpp! muuda ära
//* specialty.coding.code = #E170
//* specialty.coding.display = "Kardioloogia"
* location = Reference(Location/location-y-korpus)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
