Instance: location-pharmacy
InstanceOf: EESPDLocation
Usage: #example
Description: "Location for Mustamäe keskuses apteek"
* meta.profile = "https://fhir.ee/spd/StructureDefinition/ee-spd-location"
* status = #active
* extension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-effective-period"
* extension[=].valuePeriod.start = "2020-07-01"
* extension[=].valuePeriod.end = "2100-01-01"
* name = "Mustamäe keskuse apteek"
* identifier.value = "242"
* identifier.system = "https://fhir.ee/sid/org/est/locpharm"
* managingOrganization = Reference(Organization/organization-pharmacy)
* address[0]
  * use = #work
  * type = #physical
  * country = "EE"
  * text = "Harju maakond, Tallinn, Mustamäe linnaosa, A.H.Tammsaare tee 104a, indeks 12918"
  * extension[adsAdrId].valueCoding = https://fhir.ee/base/CodeSystem/ads-adr-id#2120589  //lisatud base
  * extension[adsOid].valueCoding = https://fhir.ee/base/CodeSystem/ads-oid#ME03306102
  * extension[official].valueBoolean = true