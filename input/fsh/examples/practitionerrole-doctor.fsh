Instance: practitionerrole-doctor
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole D99876"
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-doctor)
* organization = Reference(Organization/OrganizationPERH)
* code = $rollid#doctor "Arst"
//* code.coding.value = "doctor"
* specialty = $erialad#E260 "ortopeedia"
* location = Reference(Location/location-taastusravi)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone