Instance: PractitionerRole-lookup
InstanceOf: EESPDOperationDefinition
Usage: #example
Description: "The lookup operation for PractitionerRole resources."
* url = "http://hl7.org/fhir/OperationDefinition/PractitionerRole-lookup"
* version = "1.0.0"
* name = "PractitionerRoleLookup"
* title = "PractitionerRole Lookup Operation"
* status = #active
* kind = #operation
* experimental = false
* date = "2026-03-02T12:09:32+00:00"
* publisher = "TEHIK"
* contact.name = "TEHIK"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "https://tehik.ee"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "abi@tehik.ee"
* description = "The lookup operation for PractitionerRole resources."
* affectsState = false
* code = #lookup
* resource[0] = #PractitionerRole
* system = false
* type = true
* instance = false
* parameter[0].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The identifier of the practitioner as system|code."
* parameter[=].type = #string
* parameter[+].name = #organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The organization resource reference. Either this or organization.identifier must be provided."
* parameter[=].type = #Reference
* parameter[+].name = #organization.identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The organization's business registry code as system|code (system must be https://fhir.ee/sid/org/est/br). Either this or organization must be provided."
* parameter[=].type = #string
* parameter[+].name = #role
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Role name of practitioner, e.g. 'receptionist'."
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The found or created PractitionerRole resource."
* parameter[=].type = #PractitionerRole
