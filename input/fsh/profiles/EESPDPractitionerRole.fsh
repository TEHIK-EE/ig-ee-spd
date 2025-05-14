Profile: EESPDPractitionerRole
Parent: EEBasePractitionerRole
Id: ee-spd-practitioner-role
Title: "EE SPD PractitionerRole"
Description: "Tervishoiutöötaja roll. Practitioner role in SPD"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* practitioner 1..1
* practitioner only Reference(EESPDPractitioner)
* organization 1..1
* organization only Reference(EESPDOrganization)
* location only Reference(EESPDLocation)
* code.coding.system = "https://fhir.ee/CodeSystem/autoriseerimismooduli-kasutajarollid" (exactly)
* code.coding.system ^short = "Healthcare professional role eg. doctor | nurse | consent-representative | specialist | student | receptionist etc"
* code.coding.system ^definition = "Tervishoiutöötaja rolli väärtus loendist"
* specialty[eriala].coding.system = "https://fhir.ee/CodeSystem/erialad" (exactly)
//* code[role].coding.system = "https://teabekeskus.tehik.ee/et/loendid/autoriseerimismooduli-kasutajarollid" (exactly)
//* code[role] ^short = "Practitioner role"
//* code[role] from EESPDPractitionerRole (extensible)
//* code[tor].coding.system = "https://fhir.ee/CodeSystem/occupation" (exactly)
//* code[tor] ^short = "Official occupation at the national register"
//* code[tor] ^short = "Ametinimetus (Töötamiseregistri andmete järgi)"
//* code[tor] from EEOccupation (extensible)
* contact 1..1