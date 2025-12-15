Instance: organization-pharmacy
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organization pharmacy. (Organisatsioon apteek, mis ei ole TTO)"
* language = #et
* identifier.value = "12694290"
* identifier.system = "https://fhir.ee/CodeSystem/organisatsiooni-identifikaatorite-domeen"
* active = true
* name = "Mustamäe Keskuse Apteek"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "testandmed@ravimiamet.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 444555" 
* type[organizationType].coding.code = #bus
* type[organizationType].coding.system = $org-type 
* type[organizationType].coding.display = "Non-Healthcare Business or Corporation"
* qualification.code.coding[pharmacy].system = $ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus
* qualification.code.coding[pharmacy].display = "Üldapteek"
* qualification.code.coding[pharmacy].code = #YLD
* qualification.extension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-effective-period"
* qualification.extension[=].valuePeriod.start = "2015-02-07T13:28:17-05:00"
* qualification.extension[=].valuePeriod.end = "2017-02-07T13:28:17-05:00"
//* qualification.extension.url = "http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod"
* qualification.period.start = "2012-01-12" 
* qualification.identifier[pharmacyIdentifier].value = "242"
//* qualification.identifier[pharmacyIdentifier].system = ""
//* qualification.identifier.system = "https://fhir.ee/ra-kaitlejate-andmekogu"
/* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#2 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#3 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" 
*/