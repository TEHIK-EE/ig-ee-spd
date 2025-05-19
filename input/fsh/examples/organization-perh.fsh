Instance: OrganizationPERH
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organization PERH"
* identifier.value = "90006399"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "sihtasutus Põhja-Eesti Regionaalhaigla"
* contact.telecom.value = "info@regionaalhaigla.ee"
* contact.address 
  * use = #work
  * country = "EE"
  * state = "Harju"
  * city = "Tallinn"
  * postalCode = "14215"
  * text = "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
* qualification.identifier.value = "L02565"
* qualification.identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification.code = $tegevusala#A001 "Statsionaarsed pulmonoloogiateenused"
* qualification.period.start = "2012-01-12" 