Instance: organization-perh123
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organization PERH with several licences. (ee Asutus Põhja-Eesti Regionaalhaigla tegvuslubadega)"
* language = #et
* identifier.value = "90006399"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "Sihtasutus Põhja-Eesti Regionaalhaigla"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "info@regionaalhaigla.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 617 1300" 
* type[organizationType] = #prov
* type[hospitalType].coding.display = "Taastusravi haigla"
* qualification[0].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 
* qualification[+].identifier.value = "L02947"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#2 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#3 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" 
