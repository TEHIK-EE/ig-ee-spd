Instance: oganization-otherKRA
InstanceOf: EESPDOrganization
Usage: #example
Description: "KRA. Organization without licence. (ee Tegevusloata organisatsioon. Ei ole TTO, aga samas on õigus edastada seal töötaval tervihsoiutöötajal TIS-i dokumente. Ei oma tegevusluba.)"
* language = #et
* identifier.value = "70007647"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* type[organizationType].coding = #bus
* type[organizationType].coding.system = "http://hl7.org/fhir/ValueSet/organization-type"
* name = "Kaitseressursside Amet"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "krainfo@kra.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 7170700" 
/** qualification[0].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 

* qualification[+].identifier.value = "L02947"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A005 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A007 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" */
