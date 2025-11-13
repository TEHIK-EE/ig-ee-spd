Instance: practitionerrole-doctor
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole D99876"
* language = #et
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-doctor)
* organization = Reference(Organization/organization-perh123)
* code.coding[role].system = $rollid
* code.coding[role].code = #doctor
* code.coding[role].display = "Arst"
//* code.coding.value = "doctor"
* specialty.code.coding.system = "https://fhir.ee/CodeSystem/erialad" //NB! EEBases juba valesti see CS lõpp! muuda ära
* specialty.code.coding.code = #E170
* specialty.code.coding.display = "Kardioloogia"
* location = Reference(Location/location-y-korpus)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
