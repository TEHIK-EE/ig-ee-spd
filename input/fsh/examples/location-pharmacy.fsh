Instance: location-pharmacy
InstanceOf: EESPDLocation
Usage: #example
Description: "Location for Mustamäe keskuses apteek"
* meta.profile = "https://fhir.ee/StructureDefinition/ee-spd-location"
* status = #active
* name = "Mustamäe keskuse apteek"
* identifier.value = "242"
* identifier.system = "https://fhir.ee/ra-kaitlejate-andmekogu"
* managingOrganization = Reference(Organization/organization-pharmacy)
* address[0]
  * use = #work
  * type = #physical
  * country = "EE"
  * text = "Harju maakond, Tallinn, Mustamäe linnaosa, A.H.Tammsaare tee 104a, indeks 12918"
  * extension[adsAdrId].valueCoding = https://fhir.ee/base/CodeSystem/ads-adr-id#2120589  //lisatud base
  * extension[adsOid].valueCoding = https://fhir.ee/base/CodeSystem/ads-oid#ME03306102
  * extension[official].valueBoolean = true
//* address.extension[0].url = "https://fhir.ee/base/StructureDefinition/ee-ads-adr-id"
//* address.extension[0].valueCoding.code = #2881142
//* address.extension[0].valueCoding.system = "https://fhir.ee/CodeSystem/ads-adr-id" 
//* address.extension[0].valueCodeableConcept.text = "2881142 - see on ADR number geoportaalist, see on parem kui EHAK."
//* address.extension[1].url = "https://fhir.ee/base/StructureDefinition/ee-ee-ads-oid"
//* address.extension[1].valueCodeableConcept.coding[1].code = #ME03306102
//* address.extension[1].valueCodeableConcept.coding[1].system = "https://fhir.ee/CodeSystem/ads-oid" 