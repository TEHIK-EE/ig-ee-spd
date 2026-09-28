Instance: organization-pharmacy
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organization pharmacy. (Organisatsioon apteek, mis ei ole TTO)"
* language = #et
* identifier.value = "12694290"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "Mustamäe Keskuse Apteek"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "testandmed@ravimiamet.ee"
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+372 444555"
* type[organizationType].coding.system = $org-type-muu
* type[organizationType].coding.code = #pharm
* type[organizationType].coding.display = "Üldapteek"
* qualification.code.coding[pharmacy].system = $ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus
* qualification.code.coding[pharmacy].display = "Üldapteek"
* qualification.code.coding[pharmacy].code = #YLD
* qualification.modifierExtension[0].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification.modifierExtension[=].valuePeriod.start = "2015-02-07T13:28:17-05:00"
* qualification.modifierExtension[=].valuePeriod.end = "2017-02-07T13:28:17-05:00"
* qualification.modifierExtension[+].url = "https://fhir.ee/spd/StructureDefinition/ee-tis-suspension-period"
* qualification.modifierExtension[=].valuePeriod.start = "2018-02-07T13:28:17-05:00"
* qualification.modifierExtension[=].valuePeriod.end = "2019-02-07T13:28:17-05:00"
* qualification.period.start = "2012-01-12"
* qualification.identifier[pharmacyIdentifier].value = "290"
* qualification.identifier[pharmacyIdentifier].system = "https://fhir.ee/sid/org/est/lnpharm"
