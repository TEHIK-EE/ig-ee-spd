Instance: oganization-other
InstanceOf: EESPDOrganization
Usage: #example
Description: "Organization without tegevusluba"
* language = #et
* identifier.value = "1234567"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "massaazi salong"
* contact
  * telecom 
    * system = #email
    * value = "info@massage.ee" 
/* contact.address 
  * use = #work
  * country = "EE"
  * state = "Harju"
  * city = "Tallinn"
  * postalCode = "14215"
   * text = "Harju maakond, Tallinn, Valu tee 19"
*/
* qualification[0].identifier.value = "L02565"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
* qualification[=].period.start = "2012-01-12" 
/*
* qualification[+].identifier.value = "L02947"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A005 "Iseseisva õendusabi osutamine"
* qualification[=].period.start = "2011-01-12" 
* qualification[+].identifier.value = "L03671"
* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
* qualification[=].code = $tegevusala#A007 "Kiirabi teenus"
* qualification[=].period.start = "2011-01-12" */
