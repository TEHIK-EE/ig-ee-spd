Profile: EESPDLocation
Parent: EEBaseLocation
Id: ee-spd-location
Title: "EE SPD Location"
Description: "TEGEVUSKOHT (näiteks korpus, osakond, korrus, palat jne). Location in SPD."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* status 0..1 
* address ^short = "AdrId is mandatory"
* managingOrganization only Reference(EESPDOrganization)
* managingOrganization 1..1
* partOf only Reference(EESPDLocation)
* description ^short = "If location has no other characteristic"
* description ^definition = "Kui asukohta pole võimalik muul viisil kirjeldada."