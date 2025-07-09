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
* organization ^short = "Organization where practitioner has this role. E.g PERH"
* organization ^definition = "Organisatsioon, kus tervishoiutöötajal on konkreetne roll. Näiteks PERH. Siit tuleb tegevusluba."
* organization only Reference(EESPDOrganization)
* location only Reference(EESPDLocation)
* location ^short = "Address and exact location where this practitioner in this role performs healthcare service. HCP may have several roles each with different location (and address)"
* location ^definition = "Näitab millise asutuse tegevuskohaga see isik ja roll seotud on. Sest organisatsiooni aadress võib olla juriidiline aadress aga mitte täpne asukoha aadress. Location profiili kaudu saab aadressi ja seda aadressi haldava organisatsiooni kätte"
* code.coding.system = "https://fhir.ee/CodeSystem/autoriseerimismooduli-kasutajarollid" (exactly)
* code.coding.system ^short = "Healthcare professional role e.g. doctor | nurse | consent-representative | specialist | student | receptionist etc. NB! code all on ka TÖR jaotus EEBase järgi kui vaja lisada."
* code.coding.system ^definition = "Tervishoiutöötaja rolli väärtus loendist. Näitab, mis õigused konkreetsel rollil on (nt muutmis/vaatamis õigus jne)"
* specialty[eriala].coding.system ^short = "use local codesystem and codes eg. E140 etc. Use ONLY the code (in case of several) that is relevant in this role. NB! Eriala tuleb ka Practitioner profiiliga kaasa!"
* specialty[eriala].coding.system ^definition = "ERIALADE loend terminoloogiaserverist. Siin kasutada AINULT seda eriala, mis on oluline konkreetses rollis!"
* specialty[eriala].coding.system from https://fhir.ee/CodeSystem/eriala
//* code[role].coding.system = "https://teabekeskus.tehik.ee/et/loendid/autoriseerimismooduli-kasutajarollid" (exactly)
//* code[role] ^short = "Practitioner role"
//* code[role] from EESPDPractitionerRole (extensible)
//* code[tor].coding.system = "https://fhir.ee/CodeSystem/occupation" (exactly)
//* code[tor] ^short = "Official occupation at the national register"
//* code[tor] ^short = "Ametinimetus (Töötamiseregistri andmete järgi)"
//* code[tor] from EEOccupation (extensible)
* contact 1..1
* contact ^short = "HCP's contact details in this particular organization and role. NB! For personal contact details use EESPDPractitioner."
* contact ^definition = "Töötaja kontaktandmed selles konkreetses asutuses ja rollis; kontakttelefoni number, e-posti aadress ja/või faksinumber"
* healthcareService 0..0
* characteristic 0..0
* communication 0..0
* availability 0..0
* endpoint 0..0
