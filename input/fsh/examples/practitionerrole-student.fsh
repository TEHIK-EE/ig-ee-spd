/*Instance: practitionerrole-student
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole for student who hasn't got MEDRE D-code yet)"
* language = #et
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-other)
* organization = Reference(Organization/organization-perh123)
* code.coding.system = $rollid
* code.coding.code = #student
* code.coding.display = "Abiarst"
//* code.coding.value = "doctor"
//* specialty[eriala].coding.system = "https://fhir.ee/CodeSystem/erialad" //NB! EEBases juba valesti see CS lõpp! muuda ära
//* specialty[eriala].coding.code = #E170
//* specialty[eriala].coding.display = "Kardioloogia"
* location = Reference(Location/location-y-korpus)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
*/