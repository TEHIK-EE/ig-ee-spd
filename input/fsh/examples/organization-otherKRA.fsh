Instance: oganization-otherKRA
InstanceOf: EESPDOrganization
Usage: #example
Description: "KRA. Organization without licence. (ee Tegevusloata organisatsioon. Ei ole TTO, aga samas on õigus edastada seal töötaval tervihsoiutöötajal TIS-i dokumente. Ei oma tegevusluba.)"
* language = #et
* identifier.value = "70007647"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* type[organizationType].coding.system = $org-type
* type[organizationType].coding.code = #bus
* type[organizationType].coding.display = "Muu asutus"
* name = "Kaitseressursside Amet"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "krainfo@kra.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 7170700"
