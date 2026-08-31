Profile: EESPDHealthcareService
Parent: EEBaseHealthcareService
Id: ee-spd-healthcare-service
Title: "EE SPD HealthcareService"
Description: "Teenus"
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* extension 0..1
* extension contains
    ExtensionEETISEffectivePeriod named validityTime 0..1
* extension[validityTime] ^short = "Validity start and end date of the healthcare service."  
* extension[validityTime].valuePeriod.start 1..1  
* type ^short = "Teenuse kood. Näiteks T0003 hambaraviteenused."
* type from $service-type-test-vs
* type.coding.system from $service-type-test-vs
* type 1..1
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* type.coding.version 0..0
* type.coding.userSelected 0..0
* category 0..0
* providedBy ^short = "Teenuse osutamise tegevuskohad. Viide EESPDOrganizationile?"
* providedBy only Reference(EESPDOrganization)
* location ^short = "Viide tegevuskohale"
* location only Reference(EESPDLocation)
* contained 0..0
* modifierExtension 0..0 
* identifier 0..0
* offeredIn 0..0
* specialty 0..0
* name 0..0
* comment 0..0
* extraDetails 0..0
* photo 0..0
* contact 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility 0..0
* program 0..0
* characteristic 0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* availability 0..0
* endpoint 0..0
