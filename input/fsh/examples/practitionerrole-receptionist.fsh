Instance: practitionerrole-receptionist
InstanceOf: EESPDPractitionerRole
Usage: #example
Description: "PractitionerRole for receptionist"
* language = #et
* active = true
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-other)
* organization = Reference(Organization/organization-perh123)
* code[0].coding[tor].system = $occupation
* code[=].coding[tor].code = #42260001
* code[=].coding[tor].display = "Administraator"
* code[+].coding[role].system = $admin-rollid
* code[=].coding[role].code = #receptionist
* code[=].coding[role].display = "Registraator/klienditeenindaja"
* location = Reference(Location/location-narva-haigla)
* contact.telecom.value = "5555551"
* contact.telecom.system = #phone

