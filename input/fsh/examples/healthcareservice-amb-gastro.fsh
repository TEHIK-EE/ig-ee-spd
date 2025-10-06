Instance: healthcareservice-amb-gastro
InstanceOf: EESPDHealthcareService
Usage: #example
Description: "Example of healthcare service (ee Tervishoiuteenuse näidis)"
* id = "amb-gastro1"
* extension[0].url = "https://fhir.ee/StructureDefinition/ee-tis-healthcareservice-validity"
* extension[=].valuePeriod.start = "2015-02-07T13:28:17-05:00"
* extension[=].valuePeriod.end = "2017-02-07T13:28:17-05:00"
* type.coding.code = #T0068 
* type.coding.system = $service-type-test-vs
* type.coding.display = "ambulatoorsed gastroenteroloogiateenused"
* providedBy = Reference(Organization/oganization-perh)
* location = Reference(Location/location-y-korpus)


