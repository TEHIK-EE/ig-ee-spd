Instance: practitionerrole-nurse
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole N99876"
* language = #et
* active = true
* period.start = "2005-01-01"
* practitioner = Reference(Practitioner/practitioner-nurse)
* organization = Reference(Organization/organization-perh123)
* code[role].coding.system = $rollid
* code[role].coding.code = #nurse
* code[role].coding.display = "Õde"
//* code.coding.value = "doctor"
//* location = Reference(Location/location-taastusravi)
* contact.telecom.value = "5555555"
* contact.telecom.system = #phone
