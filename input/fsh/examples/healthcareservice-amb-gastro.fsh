Instance: healthcareservice-amb-gastro
InstanceOf: EESPDHealthcareService
Usage: #example
Description: "Example of healthcare service (ee Tervishoiuteenuse näidis)"
* language = #et
* id = "amb-gastro1"
* extension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-effective-period"
* extension[=].valuePeriod.start = "2015-02-07T13:28:17-05:00"
* extension[=].valuePeriod.end = "2017-02-07T13:28:17-05:00"
* type.coding.code = #T0068 
* type.coding.system = $service-type-test
* type.coding.display = "ambulatoorsed gastroenteroloogiateenused"
* providedBy = Reference(Organization/organization-perh123)
* location = Reference(Location/location-narva-haigla)


