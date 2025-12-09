Extension: ExtensionEETISLicenceStopped
Id: ee-tis-licence-stopped
Description: "Period during which healthcare provision licence is STOPPED."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Organization.qualification"
* . ^short = "Period durinc which healthcare provision licence is STOPPED."
* . ^definition = "Tegevusloa peatamise ajavahemik"
* valuePeriod.start 0..1
* valuePeriod.end 0..1