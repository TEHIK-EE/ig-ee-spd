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
* type[organizationType].coding = #bus
* type[organizationType].coding.system = $org-type 
* qualification.code.coding[pharmacy].system = $ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus
* qualification.code.coding[pharmacy].display = "Üldapteek"
* qualification.code.coding[pharmacy].code = #YLD
//* qualification.extension.url = "licenceStopped"
* qualification.extension.extension[0].valuePeriod.start = "2025-12-01"
* qualification.extension.extension[=].valuePeriod.end = "2025-12-31"
* qualification.extension.extension.url = "http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod"
* qualification.period.start = "2012-01-12" 
* qualification.identifier[pharmacyIdentifier].value = "242"
//* qualification.identifier.system = "https://fhir.ee/ra-kaitlejate-andmekogu"
/* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#2 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#3 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" 
*/