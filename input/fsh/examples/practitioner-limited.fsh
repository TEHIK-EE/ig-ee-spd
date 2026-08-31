Instance: practitioner-limited
InstanceOf: EESPDPractitionerLimited
Usage: #example
Description: "Practitioner for whom is only the THT code provided, no national identification code."
* language = #et
* name.family = "Tulem"
* name.given = "Meiles"
* identifier[0].system = "https://fhir.ee/sid/pro/est/pho"
* identifier[=].value = "M12345"
* identifier[=].period.start = "2002-03-02"