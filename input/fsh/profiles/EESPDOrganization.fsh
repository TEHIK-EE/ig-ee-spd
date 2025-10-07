Profile: EESPDOrganization
Parent: EEBaseOrganization
Id: ee-spd-organization
Title: "EE SPD Organization"
Description: "Asutus. Organization in SPD"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* identifier ^short = "Business registry code, VATin code or some other identifying code of organization must be here"
* identifier ^definition = "Äriregistri kood, KMKR kood vm"
* identifier.system ^binding.description = "Äriregistril https://fhir.ee/sid/org/est/br, KMKR puhul https://fhir.ee/sid/org/est/vatin"
* contact 0..1
  * telecom 0..1 
  * telecom ^short = "phone, e-mail and/or fax of the organization must be provided"
  * telecom ^definition = "Asutuse kontakttelefoni number, e-posti aadress ja/või faksinumber."
  //* address 0..1
  //* address ^short = "Address is presented using ADS"
  //* address ^definition = "Asutuse aadress ADS kujul. Asutusel on üks juriidiline aadress, aga teenuse osutamine ise võib toimuda teises asukohas ja seda aadressi tuleb koguda kontakti juures."
  //* address only EEBaseAddress
* contact ^short = "Asutuse kontaktandmed, email, telefon. (aadress tuleb locationi alt iga tegevuskoha kohta eraldi)"
* active ^short = "Status of organization. STAATUS."
* active ^definition = "STAATUS, kas organisatsioon on aktiivne või mitte"
* type ^short = "Asutuse tüüp. Nt.|prov| = TTO, |bus| = kui tegemist on mitte-TTOga"
* name ^short = "Name of the organization. NIMETUS"
* name ^definition = "Asutuse NIMETUS."
* partOf ^short = "Allüksuste eristamiseks kasutada EESPDLocationit"
* qualification ^short = "Licence(s) to provide healthcare service. TEGEVUSLUBA."
* qualification ^definition = "TEGEVUSLUBA"
* qualification.identifier.system = "https://fhir.ee/sid/org/est/fi" (exactly)
* qualification.identifier ^short = "Number of the licence"
* qualification.identifier ^definition = "TEGEVUSLOA NUMBER"
* qualification.period ^short = "Period of the licence validity. TEGEVUSLOA KEHTIVUS"
* qualification.period ^definition = "Väljastatud tegevusloa kehtivusaeg."
* qualification.code ^short = "Field of services this licence allows. TEGEVUSLOA LIIK."
* qualification.code ^definition = "TEGEVUSLOA LIIK. Terviseameti loend!"
* qualification.code from $tegevusloa-liik-vs
//* qualification.code ^slicing.discriminator.type = #value
//* qualification.code ^slicing.discriminator.path = "code.coding.system"
//* qualification.code ^slicing.rules = #open
//* qualification.code contains
//    field 0.. and
//    associatedService 0..
//* qualification.code[field].code.coding.system = "https://fhir.ee/CodeSystem/tegevusload"
//* qualification.code[associatedService].code.coding.system = "https://fhir.ee/CodeSystem/teenused"

