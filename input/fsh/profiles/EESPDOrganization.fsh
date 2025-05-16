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
* contact 1..1
  * telecom 1..1 
  * telecom ^short = "phone, e-mail and/or fax of the organization must be provided"
  * telecom ^definition = "Asutuse kontakttelefoni number, e-posti aadress ja/või faksinumber."
  * address 1..1
* qualification ^short = "Licence(s) to provide healthcare service. TEGEVUSLUBA."
* qualification ^definition = "TEGEVUSLUBA"
* qualification.identifier.system = "https://fhir.ee/sid/org/est/fi" (exactly)
* qualification.period ^short = "Period of the licence validity. TEGEVUSLOA KEHTIVUS"
* qualification.period ^definition = "Väljastatud tegevusloa kehtivusaeg."
* qualification.code ^short = "Field of services this licence allows. TEGEVUSALA."
* qualification.code ^definition = "tegevusala. VAJA LOENDIT"
//* qualification.code ^slicing.discriminator.type = #value
//* qualification.code ^slicing.discriminator.path = "code.coding.system"
//* qualification.code ^slicing.rules = #open
//* qualification.code contains
//    field 0.. and
//    associatedService 0..
//* qualification.code[field].code.coding.system = "https://fhir.ee/CodeSystem/tegevusload"
//* qualification.code[associatedService].code.coding.system = "https://fhir.ee/CodeSystem/teenused"

