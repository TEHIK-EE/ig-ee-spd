Instance: oganization-perh
InstanceOf: EESPDOrganization
Usage: #example
Description: "Asutus Põhja-Eesti Regionaalhaigla oma äriregistrikoodi, juriidilise aadressi ning tegvuslubadega (osad). Organization PERH"
* identifier.value = "90006399"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "sihtasutus Põhja-Eesti Regionaalhaigla"
* contact
  * telecom 
    * system = #email
    * value = "info@regionaalhaigla.ee" 
* contact.address 
  * use = #work
  * country = "EE"
  * state = "Harju"
  * city = "Tallinn"
  * postalCode = "14215"
  * text = "Harju maakond, Tallinn, Sütiste tee 19"
* qualification[0].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A001 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 
* qualification[+].identifier.value = "L02947"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A005 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A007 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" 
