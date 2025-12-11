Alias: $effective-period = http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod

Profile: EESPDLocation
Parent: EEBaseLocation
Id: ee-spd-location
Title: "EE SPD Location"
Description: "TEGEVUSKOHT (näiteks korpus, osakond, korrus, palat jne). Location in SPD."
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* extension 0..*
* extension contains    
    $effective-period named validityPeriod 0..1
* extension[validityPeriod] ^short = "Period when location is actively operating. (ee TEGEVUSKOHA KEHTIVUSE AJAVAHEMIK)"
* status 0..1 
* address ^short = "AdrId is mandatory"
* identifier ^short = "Identifier for this location, used for PHARMACIES only. (ee TEGEVUSKOHA KOOD AINULT apteekide puhul)"
* identifier.system ^binding.description = "Apteekide puhul on Ravimikäitlejate andmekogu"
* identifier.use 0..0
* identifier.type 0..0
* identifier.period 0..0
* identifier.assigner 0..0
* managingOrganization only Reference(EESPDOrganization)
* managingOrganization 1..1
* partOf only Reference(EESPDLocation)
//* description ^short = "If location has no other characteristic"
//* description ^definition = "Kui asukohta pole võimalik muul viisil kirjeldada."
* contact 0..*
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #closed
* contact.telecom contains 
    phone 0..1 and 
    email 0..1
* contact.telecom[phone].system = #phone
* contact.telecom[phone] ^short = "Telefoni number"
* contact.telecom[email].system = #email
* contact.telecom[email].system 1..1 
* contact.telecom[email] ^short = "E-Mail"
* contact.purpose 0..0
* contact.name 0..0
* contact.address 0..0
* contact.organization 0..0
* contact.period 0..0  
* contact ^short = "Contact details of the location. (ee Tegevuskoha kontaktandmed, email, telefon.)"
* endpoint 0..0
* virtualService 0..0
* hoursOfOperation 0..0
* characteristic 0..0
* position 0..0
* contained 0..0
* modifierExtension 0..0
* operationalStatus 0..0
* alias 0..0
* description 0..0
* mode 0..0
* type 0..0
* form 0..0
* partOf 0..0
