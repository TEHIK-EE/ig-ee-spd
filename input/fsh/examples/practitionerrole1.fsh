Instance: practitionerrole1
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole N99876"
* active = true
* period.start = "2005-01-01"
* practitioner = Reference(Practitioner/practitioner-nurse)
* organization = Reference(Organization/OrganizationPERH)
* code = $rollid#doctor "Arst"
//* code.coding.value = "doctor"
* location = Reference(Location/EESPDLocation)
* contact.telecom.value = "5555555"