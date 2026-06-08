Extension: ExtensionEETISSuspensionPeriod
Id: ee-tis-suspension-period
Description: "Period during which something is SUSPENDED."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Organization.qualification"
//* ^context.expression = "Organization.qualification and Location"
* . ^short = "Period during which something (e.g licence) is SUSPENDED."
* . ^definition = "Ajavahemik, kui midagi (TEGEVUSLUBA) on peatatud."
* . ^isModifier = true
* . ^isModifierReason = "Indicates that the qualification/licence is temporarily suspended during the stated periods, which changes the interpretation of the qualification validity."
* value[x] only Period
//* valuePeriod.start 0..1
//* valuePeriod.end 0..1