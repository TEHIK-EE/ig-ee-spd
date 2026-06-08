Instance: organization-perh-mitu-peatamist
InstanceOf: EESPDOrganization
Usage: #example
Title: "Example of organization (PERH) with several licence suspensions."
Description:  "(ee Asutus Põhja-Eesti Regionaalhaigla mitme tegevusloa peatamisega.)"
* language = #et
* identifier.value = "90006399"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "SA PERH 2"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "info@regionaalhaigla.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 617 1300" 
* type[organizationType].coding.system = $org-type-CS
* type[organizationType].coding.code = #prov
* type[organizationType].coding.display = "TTO"
//* type[=].coding.code = #prov //"http://terminology.hl7.org/CodeSystem/organization-type"
* type[hospitalType].text = "Üldhaigla"
//* type[hospitalType].coding.system = $haigla-liik //"https://fhir.ee/ValueSet/medre-haigla-liik"
//* type[hospitalType].coding.system = "https://fhir.ee/ValueSet/medre-haigla-liik"
* qualification[0].modifierExtension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification[=].modifierExtension[=].valuePeriod.start = "2013-02-07T13:28:17-05:00"
* qualification[=].modifierExtension[=].valuePeriod.end = "2014-02-07T13:28:17-05:00"
* qualification[=].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 
* qualification[+].modifierExtension[+].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification[=].modifierExtension[=].valuePeriod.start = "2015-02-07T13:28:17-05:00"
* qualification[=].modifierExtension[=].valuePeriod.end = "2016-02-07T13:28:17-05:00"
* qualification[=].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 
* qualification[+].modifierExtension[+].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification[=].modifierExtension[=].valuePeriod.start = "2018-02-07T13:28:17-05:00"
* qualification[=].modifierExtension[=].valuePeriod.end = "2019-02-07T13:28:17-05:00"
* qualification[=].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 



/*/ qualification[+].identifier.value = "L02947"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#2 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].modifierExtension[+].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification[=].modifierExtension[=].valuePeriod.start = "2012-02-07T13:28:17-05:00"
* qualification[=].modifierExtension[=].valuePeriod.end = "2013-02-07T13:28:17-05:00"
* qualification[=].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#3 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" 
*/