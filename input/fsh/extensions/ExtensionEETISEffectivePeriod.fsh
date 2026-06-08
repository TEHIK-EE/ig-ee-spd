Extension: ExtensionEETISEffectivePeriod
Id: ee-tis-effective-period
Description: "Period during which something is VALID."
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Location"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
//* ^context.expression = "Organization.qualification and Location"
* . ^short = "Period durinc which something (e.g licence) is VALID."
* . ^definition = "Kehtivuse ajavahemik."
* value[x] only Period
//* valuePeriod.start 0..1
//* valuePeriod.end 0..1