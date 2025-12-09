Instance: location-narva-haigla
InstanceOf: EESPDLocation
Usage: #example
Description: "Location Narva Haigla jaoks"
* meta.profile = "https://fhir.ee/StructureDefinition/ee-spd-location"
* status = #active
* name = "Narva Haigla"
* managingOrganization = Reference(Organization/organization-perh123)
* address[0]
  //* use = #work
  //* text = "Ida-Viru maakond, Narva linn, Kalda tn 9"
  //* country = "EE"
//  * address[0]
  * use = #work
  * type = #physical
  * country = "EE"
  * text = "Ida-Viru maakond, Narva linn, Kalda tn 9"
  * extension[adsAdrId].valueCoding = https://fhir.ee/base/CodeSystem/ads-adr-id#2881142 //lisatud base
  * extension[adsOid].valueCoding = https://fhir.ee/base/CodeSystem/ads-oid#ME01648705 // lisatud base
  * extension[official].valueBoolean = true
//* address.extension[0].url = "https://fhir.ee/base/StructureDefinition/ee-ads-adr-id"
//* address.extension[0].valueCoding.code = #2881142
//* address.extension[0].valueCoding.system = "https://fhir.ee/CodeSystem/ads-adr-id" 
//* address.extension[0].valueCodeableConcept.text = "2881142 - see on ADR number geoportaalist, see on parem kui EHAK."
//* address.extension[1].url = "https://fhir.ee/base/StructureDefinition/ee-ee-ads-oid"
//* address.extension[1].valueCodeableConcept.coding[1].code = #ME01648705
//* address.extension[1].valueCodeableConcept.coding[1].system = "https://fhir.ee/CodeSystem/ads-oid" 