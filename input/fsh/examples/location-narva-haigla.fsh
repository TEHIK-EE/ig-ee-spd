Instance: location-narva-haigla
InstanceOf: EESPDLocation
Usage: #example
Description: "Location Narva Haigla jaoks"
* meta.profile = "https://fhir.ee/spd/StructureDefinition/ee-spd-location"
* status = #active
* managingOrganization = Reference(Organization/organization-perh123)
* address[0]
  * use = #work
  * type = #physical
  * country = "EE"
  * text = "Ida-Viru maakond, Narva linn, Kalda tn 9"
  * extension[adsAdrId].valueCoding = https://fhir.ee/base/CodeSystem/ads-adr-id#2881142 //lisatud base
  * extension[adsOid].valueCoding = https://fhir.ee/base/CodeSystem/ads-oid#ME01648705 // lisatud base
  * extension[official].valueBoolean = true