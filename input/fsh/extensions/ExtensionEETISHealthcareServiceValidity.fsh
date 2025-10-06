Extension: ExtensionEETISHealthcareServiceValidity
Id: ee-tis-healthcareservice-validity
Description: "Validity start and end date of a healthcare service code"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ^short = "Validity start and end date of the healthcare service."
* . ^definition = "Tervishoiuteenuse kehtivuse algus (ja lõpp)."
* value[x] only Period
* value[x] ^short = "Validity start and end date of the healthcare service."
* value[x] ^definition = "Tervishoiuteenuse kehtivuse algus (ja lõpp)."
* valuePeriod.start 1..1
* valuePeriod.end 0..1