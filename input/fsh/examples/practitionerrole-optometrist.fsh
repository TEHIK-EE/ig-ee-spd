/*Instance: practitionerrole-other-specialist-optometrist
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole for other specialist e.g optometrist"
* language = #et
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-other)
* organization = Reference(Organization/organization-perh123)
* code.coding.system = $rollid
* code.coding.code = #specialist
* code.coding.display = "Spetsialist"
* location = Reference(Location/location-narva-haigla)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone
*/