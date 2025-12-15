Extension: ExtensionEETISEffectivePeriod
Id: ee-tis-effective-period
Description: "Period during which healthcare provision licence is STOPPED."
* ^status = #draft
//* ^context.type = #element
* ^context[0].type = #element
* ^context[=].expression = "Organization.qualification"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* ^context[+].type = #element
* ^context[=].expression = "HealthcareService"
//* ^context.expression = "Organization.qualification and Location"
* . ^short = "Period durinc which healthcare provision licence is VALID or STOPPED."
* . ^definition = "Tegevusloa peatamise ajavahemik"
* value[x] only Period
//* valuePeriod.start 0..1
//* valuePeriod.end 0..1