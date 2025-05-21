Profile: EESPDLocation
Parent: EEBaseLocation
Id: ee-spd-location
Title: "EE SPD Location"
Description: "Asukoht (näiteks korpus, osakond, korrus, palat jne). Tõenäoliselt vajalik alles ÜDR-i üleviimisel?. Location in SPD"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* status 1..1 //see kardinaalsus tuleb üle vaadata, sest on pandud ainult profiili eristamiseks eebasest
* managingOrganization only Reference(EESPDOrganization)
* partOf only Reference(EESPDLocation)
* description ^short = "If location has no other characteristic"
* description ^definition = "Kui asukohta pole võimalik muul viisil kirjeldada."