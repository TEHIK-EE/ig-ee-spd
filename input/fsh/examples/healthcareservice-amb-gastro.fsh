Instance: healthcareservice-amb-gastro
InstanceOf: EESPDHealthcareService
Usage: #example
Description: "Example of healthcare service (ee Tervishoiuteenuse näidis)"
* id = "amb-gastro1"
* type.coding.code = #T0068 
* type.coding.system = $service-type-test-vs
* type.coding.display = "ambulatoorsed gastroenteroloogiateenused"
* providedBy = Reference(Organization/oganization-perh)
* location = Reference(Location/location-y-korpus)


