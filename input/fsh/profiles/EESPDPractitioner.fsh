/*Profile: EESPDPractitioner
Parent: Practitioner
Id: ee-spd-practitioner
Title: "EE SPD Practitioner"
Description: "Tervishoiutöötaja. Practitioner in SPD"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-03T11:51:42.3642317+00:00"
* name only HumanName
* name ^short = "First name and given name of healthcare professional"
* name ^definition = "Tervishoiutöötaja ees- ja perekonnanimi"
* identifier contains 
    personalIdentifier 1..1 and
    specialistIdentifier 0..*
* identifier[personalIdentifier] ^short = "Personal identifier of healthcare professional"
* identifier[personalIdentifier] ^definition = "Tervishoiutöötaja (EE) isikukood)"
* identifier[specialistIdentifier] ^short = "Specialist code assigned from Estonian Health Board consists of one capital letter and five numbers"
* identifier[specialistIdentifier] ^definition = "Tervishoiutöötajatel Terviseameti registri registreerimistõendi number"
* identifier[specialistIdentifier].period ^short = "Validity period (if applicable) of the specialist code"
* identifier[specialistIdentifier].period ^definition = "Tervishoiutöötajatel Terviseameti registri registreerimistõendi kehtivus."
*/