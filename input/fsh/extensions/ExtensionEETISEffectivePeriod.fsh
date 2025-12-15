Extension: ExtensionEETISEffectivePeriod
Id: ee-tis-effective-period
Description: "Period during which something is VALID or STOPPED."
* ^status = #draft
//* ^context.type = #element
* ^context[0].type = #element
* ^context[=].expression = "Organization.qualification"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
//* ^context.expression = "Organization.qualification and Location"
* . ^short = "Period durinc which something is VALID or STOPPED."
* . ^definition = "Kehtivuse või mittekehtivuse ajavahemik"
* value[x] only Period
//* valuePeriod.start 0..1
//* valuePeriod.end 0..1