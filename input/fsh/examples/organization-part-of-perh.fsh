Instance: organization-part-of-perh
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organisatsioon, mis on osa teisest organisatsioonist. Äriregistrikood on sama ag tegevusluba ja aadress on teised. Organization which is part of PERH."
* identifier.value = "90006399"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "Taastusravikeskus"
* contact
  * telecom 
    * system = #email
    * value = "taastusravi@regionaalhaigla.ee" 
* contact.address 
  * use = #work
  * country = "EE"
  * state = "Harju"
  * city = "Tallinn"
  * postalCode = "14215"
  * text = "Harju maakond, Tallinn, Sõle 16"
* contact.address.extension[0].url = "https://fhir.ee/base/StructureDefinition/ee-ads-adr-id"
* contact.address.extension[0].valueCoding = #2107287 //from "https://fhir.ee/CodeSystem/ads-adr-id" 
//* contact.address.extension[0].valueCode.system = "https://fhir.ee/CodeSystem/ads-adr-id" 
//* contact.address.extension[0].valueDisplay = "2107287 - see on ADR number geoportaalist, see on parem kui EHAK."
* qualification[0].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A001 "Eriarstiabi teenus"
* partOf = Reference(Organization/oganization-perh)
