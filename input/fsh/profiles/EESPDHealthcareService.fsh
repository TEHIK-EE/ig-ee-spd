Profile: EESPDHealthcareService
Parent: EEBaseHealthcareService
Id: ee-spd-healthcare-service
Title: "EE SPD HealthcareService"
Description: "Teenus"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* category ^short = "Teenuse kood. Näiteks T0003 hambaraviteenused. VAJA LOENDIT"
* category 1..1
* providedBy ^short = "Teenuse osutamise tegevuskohad. Viide EESPDOrganizationile?"
* availability ^short = "Teenus kehtiv alates ja kuni?"
* availability 1..1