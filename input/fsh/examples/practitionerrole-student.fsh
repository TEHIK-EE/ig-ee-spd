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
* location = Reference(Location/location-narva-haigla)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
*/