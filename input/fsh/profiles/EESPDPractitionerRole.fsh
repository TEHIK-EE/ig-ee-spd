Profile: EESPDPractitionerRole
Parent: EEBasePractitionerRole
Id: ee-spd-practitioner-role
Title: "EE SPD PractitionerRole"
Description: "Tervishoiutöötaja roll. Practitioner role in SPD"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* practitioner 1..1
//* practitioner only Reference(EESPDPractitioner)
* organization 1..1
* organization only Reference(EESPDOrganization)
