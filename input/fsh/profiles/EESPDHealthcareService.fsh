Alias: $effective-period = http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod

Profile: EESPDHealthcareService
Parent: EEBaseHealthcareService
Id: ee-spd-healthcare-service
Title: "EE SPD HealthcareService"
Description: "Teenus"
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* extension contains
    $effective-period named validityTime 0..*
* type ^short = "Teenuse kood. Näiteks T0003 hambaraviteenused."
* type from $service-type-test-vs
* type.coding.system from $service-type-test-vs
* type 1..1
* category 0..0
* providedBy ^short = "Teenuse osutamise tegevuskohad. Viide EESPDOrganizationile?"
* providedBy only Reference(EESPDOrganization)
* location ^short = "Viide tegevuskohale"
* location only Reference(EESPDLocation)
