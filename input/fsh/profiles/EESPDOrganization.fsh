Alias: $effective-period = http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod

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
* identifier.id 0..0
* identifier.extension 0..0
//* identifier.system ^binding.description = "Äriregistril https://fhir.ee/sid/org/est/br, KMKR puhul https://fhir.ee/sid/org/est/vatin"
* alias 0..0

* contact 0..*
* contact.telecom.id 0..0
* contact.telecom.extension 0..0
* contact.telecom.rank 0..0
* contact.telecom.period 0..0
* contact.telecom.use = #work
* contact.telecom.use 1..1
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #closed
* contact.telecom contains 
    phone 0..* and 
    email 0..*
* contact.telecom[phone].system = #phone
//* contact.telecom[phone].use = #work 1..1
    //telecom[phone].system 1..1  
* contact.telecom[phone] ^short = "Telefoni number"
* contact.telecom[email].system = #email
//* contact.telecom[email].system 1..1 
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
* type.id 0..0
* type.extension 0..0
* type.coding.version 0..0
* type ^short = "Type of organization. Use slice hospital when expressing hospital type. (ee Asutuse tüüp. Nt.|prov| = TTO, |bus| = kui tegemist on mitte-TTOga. Haigla liik läheb hospital alla.)"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system" //olicoding.system
* type ^slicing.rules = #open
* type contains
    organizationType 1..1 and
    hospitalType 0..1
* type[organizationType].coding.system from http://hl7.org/fhir/ValueSet/organization-type 
//* type[organizationType].coding.system 1..1
* type[organizationType].coding.userSelected 0..0
* type[hospitalType] ^short = "As long as there is no VS, use text to describe the hospital type. (ee |Taastusravihaigla| Keskhaigla| Üldhaigla| Piirkondlik haigla| Erihaigla| Hooldushaigla| Kohalik haigla|)"
* type[hospitalType].coding.system from https://fhir.ee/ValueSet/medre-haigla-liik
* type[hospitalType].coding.display ^short = "medre-haigla-liik VS does NOT excist, use text"
* name ^short = "Name of the organization. (ee Asutuse NIMETUS)"
* name ^definition = "Asutuse NIMETUS."
* qualification ^short = "Licence(s) to provide healthcare service. (ee TEGEVUSLUBA)"
* qualification ^definition = "TEGEVUSLUBA"
* qualification.modifierExtension 0..0
* qualification.id 0..0
* qualification.extension 0..*
* qualification.extension.extension contains 
    $effective-period named licenceStopped 0..1
* qualification.extension.extension[licenceStopped] ^short = "Period during which healthcare provision licence is STOPPED." 
//* qualification.identifier.system ^binding.description = "TTO-del https://fhir.ee/sid/org/est/fi ja apteekidel https://fhir.ee/ra-kaitlejate-andmekogu vms "
* qualification.identifier ^short = "Healthcareprovider identifier system must be ... pharmacy has no identifier system"
* qualification.identifier ^slicing.discriminator.type = #value
* qualification.identifier ^slicing.discriminator.path = "value"
* qualification.identifier ^slicing.rules = #open
* qualification.identifier contains
    hcpIdentifier 0..1 and
    pharmacyIdentifier 0..*
* qualification.identifier[hcpIdentifier] ^short = "Identifier of hcp licence"
* qualification.identifier[hcpIdentifier].system = "https://fhir.ee/sid/org/est/fi" (exactly)
* qualification.identifier[hcpIdentifier].value only string
* qualification.identifier[pharmacyIdentifier] ^short = "Identifier of pharmacy licence"
//* qualification.identifier[pharmacyIdentifier].system = "https://fhir.ee/sid/org/est/fi" (exactly)
* qualification.identifier[pharmacyIdentifier].value only string
//* qualification.identifier.system 1..1
//* qualification.identifier.system ^short = "(ee TTO-del https://fhir.ee/sid/org/est/fi ja apteekidel https://fhir.ee/ra-kaitlejate-andmekogu vms)"
//* qualification.identifier.system from https://fhir.ee/sid/org/est/fi
//* qualification.identifier.value 1..1
//* qualification.identifier 1..1
* qualification.identifier ^short = "Number of the licence. (ee TEGEVUSLOA NUMBER)"
//* qualification.identifier ^definition = "TEGEVUSLOA NUMBER"
* qualification.identifier.id 0..0
* qualification.identifier.extension 0..0
* qualification.identifier.use 0..0
* qualification.identifier.type 0..0
* qualification.identifier.period 0..0
* qualification.identifier.assigner 0..0
* qualification.issuer 0..0
* qualification.period ^short = "Period of the licence validity. (ee TEGEVUSLOA KEHTIVUS)"
* qualification.period ^definition = "Väljastatud tegevusloa kehtivusaeg."
* qualification.period.start 1..1
* qualification.period.id 0..0
* qualification.period.extension 0..0
* qualification.code ^short = "Field of services this licence allows. (ee TEGEVUSLOA LIIK)"
* qualification.code ^definition = "TEGEVUSLOA LIIK. Terviseameti loend!"
//* qualification.code from $tegevusloa-liik-vs or from $ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus-VS
* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding contains
    tto 0..* and
    pharmacy 0..*
* qualification.code.coding[tto].system from $tegevusloa-liik-vs
//* code.coding[role].system from $rollid-VS
* qualification.code.coding[tto] ^short = "Tegevusloa liik on TTO"
* qualification.code.coding[pharmacy].system from $ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus-VS
//* code.coding[tor].system from $occupation-VS
* qualification.code.coding[pharmacy] ^short = "Pharmacy licence"
* description 0..0
* partOf 0..0
* endpoint 0..0

