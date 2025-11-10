Instance: practitionerrole-doctor
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole D99876"
* language = #et
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-doctor)
* organization = Reference(Organization/organization-perh123)
* code[0].coding.system = $rollid
* code[=].coding.code = #doctor
* code[=].coding.display = "Arst"
//* code.coding.value = "doctor"
* specialty.coding.system = $erialad //"https://fhir.ee/CodeSystem/erialad" //NB! EEBases juba valesti see CS lõpp! muuda ära
* specialty.coding.code = #E170
* specialty.coding.display = "Kardioloogia"
* location = Reference(Location/location-y-korpus)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
