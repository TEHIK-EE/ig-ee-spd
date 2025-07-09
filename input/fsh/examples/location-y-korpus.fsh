Instance: location-y-korpus
InstanceOf: EESPDLocation
Usage: #example
Description: "Location Y-korpuse jaoks"
* meta.profile = "https://fhir.ee/StructureDefinition/ee-spd-location"
* status = #active
* name = "Y-korpus"
* managingOrganization = Reference(Organization/oganization-perh)
//* address
//  * use = #work
//  * text = "Sõle 16, Tallinn"
//  * country = "EE"
  // * extension[0].url= https://fhir.ee/base/StructureDefinition/ee-ads-adr-id
  // * extensible[=].valueCodeableConcept = "2107287"
//* address.extension[0].valueCoding = https://fhir.ee/CodeSystem/ads-adr-id#2280361
//* address.extension[0].url = "https://fhir.ee/base/StructureDefinition/ee-ads-adr-id"
//* address.extension[0].valueCodeableConcept.coding[0].code = #2107287
//* address.extension[0].valueCodeableConcept.coding[0].system = "https://fhir.ee/CodeSystem/ads-adr-id" 
//* address.extension[0].valueCodeableConcept.text = "2107287 - see on ADR number geoportaalist, see on parem kui EHAK."
* description = "PERHi Y-korpus"
