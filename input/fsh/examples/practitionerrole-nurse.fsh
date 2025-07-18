Instance: practitionerrole-nurse
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole N99876"
* active = true
* period.start = "2005-01-01"
* practitioner = Reference(Practitioner/practitioner-nurse)
* organization = Reference(Organization/organization-part-of-perh)
* code = $rollid#nurse "Õde"
//* code.coding.value = "doctor"
//* location = Reference(Location/location-taastusravi)
* contact.telecom.value = "5555555"
* contact.telecom.system = #phone
