Profile: EESPDOrganization
Parent: EEBaseOrganization
Id: ee-spd-organization
Title: "EE SPD Organization"
Description: "Asutus. Organization in SPD"
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* identifier ^short = "Business registry code, VATin code or some other identifying code of organization must be here"
* identifier ^definition = "Äriregistri kood, KMKR kood vm"
* identifier.use 0..0
* identifier.type 0..0
* identifier.period 0..0
* identifier.assigner 0..0
* identifier.system ^binding.description = "Äriregistril https://fhir.ee/sid/org/est/br, KMKR puhul https://fhir.ee/sid/org/est/vatin"
* alias 0..0
* contact 0..*
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #closed
* contact.telecom contains 
    phone 0..* and 
    email 0..*
* contact.telecom[phone].system = #phone
    //telecom[phone].system 1..1  
* contact.telecom[phone] ^short = "Telefoni number"
* contact.telecom[email].system = #email
* contact.telecom[email].system 1..1 
* contact.telecom[email] ^short = "E-Mail"
//  * telecom 0..1 
//  * telecom ^short = "phone, e-mail and/or fax of the organization must be provided"
//  * telecom ^definition = "Asutuse kontakttelefoni number, e-posti aadress ja/või faksinumber."
* contact.purpose 0..0
* contact.name 0..0
* contact.address 0..0
* contact.organization 0..0
* contact.period 0..0  
* contact ^short = "Contact details of the organization. (ee Asutuse kontaktandmed, email, telefon. (aadress tuleb locationi alt iga tegevuskoha kohta eraldi))"
* active ^short = "Status of organization. (ee STAATUS näitab, kas asutus on  Äriregistris aktiivne)"
* active ^definition = "STAATUS, kas organisatsioon on aktiivne või mitte"
* type 1..*
* type ^short = "Type of organization. Use slice hospital when expressing hospital type. (ee Asutuse tüüp. Nt.|prov| = TTO, |bus| = kui tegemist on mitte-TTOga. Haigla liik läheb hospital alla.)"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type contains
    organizationType 0..1 and
    hospitalType 0..1
* type[organizationType].coding.system from http://hl7.org/fhir/ValueSet/organization-type 
* type[hospitalType] ^short = "As long as there is no VS, use text to describe the hospital type. (ee |Taastusravihaigla| Keskhaigla| Üldhaigla| Piirkondlik haigla| Erihaigla| Hooldushaigla| Kohalik haigla|)"
//* type[hospitalType] ^binding.description = "Use this slice for hospital type"
* type[hospitalType].coding.system from https://fhir.ee/ValueSet/medre-haigla-liik
//* type[hospitalType].text = "As long as there is no VS, use text to describe the hospital type"
* name ^short = "Name of the organization. (ee Asutuse NIMETUS)"
* name ^definition = "Asutuse NIMETUS."
* description 0..0
* partOf 0..0
* endpoint 0..0
* qualification ^short = "Licence(s) to provide healthcare service. (ee TEGEVUSLUBA)"
* qualification ^definition = "TEGEVUSLUBA"
* qualification.identifier.system = "https://fhir.ee/sid/org/est/fi" (exactly)
* qualification.identifier.system 1..1
* qualification.identifier.value 1..1
* qualification.identifier 1..1
* qualification.identifier ^short = "Number of the licence"
* qualification.identifier ^definition = "TEGEVUSLOA NUMBER"
* qualification.identifier.use 0..0
* qualification.identifier.type 0..0
* qualification.identifier.period 0..0
* qualification.identifier.assigner 0..0
* qualification.issuer 0..0
* qualification.period ^short = "Period of the licence validity. (ee TEGEVUSLOA KEHTIVUS)"
* qualification.period ^definition = "Väljastatud tegevusloa kehtivusaeg."
* qualification.period.start 1..1
* qualification.code ^short = "Field of services this licence allows. (ee TEGEVUSLOA LIIK)"
* qualification.code ^definition = "TEGEVUSLOA LIIK. Terviseameti loend!"
* qualification.code from $tegevusloa-liik-vs


