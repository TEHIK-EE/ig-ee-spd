Instance: Questionnaire-health-declaration
InstanceOf: EEHealthDeclarationQuestionnaire
Description: "Näidis tervisedeklaratsiooni andmestik"
Usage: #example
* meta.versionId = "3.0.0"
* name = "HDECL"
* title = "Tervisedeklaratsioon"
* version = "1.0.1"
* subjectType = #Patient
// vaja lisada code element
* url = "https://fhir.ee/qre/Questionnaire-health-declaration"
* status = #active
* date = "2023-12-12"
* approvalDate = "2024-01-01"
* effectivePeriod.start = "2024-03-16"
// * effectivePeriod.end = "2026-03-16"
* code.system = "http://fhir.ee/CodeSystem/dokumendi-tyyp"
* code.code = #81
* code.display = "Tervisedeklaratsioon"

* item[0].linkId = "category"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $HDC
* item[=].answerOption[0].valueCoding.code = #driver-group-I
* item[=].answerOption[0].valueCoding.display = "I grupi mootorsõidukijuhi tervisekontroll"
* item[=].answerOption[1].valueCoding.system = $HDC
* item[=].answerOption[1].valueCoding.code = #driver-group-II
* item[=].answerOption[1].valueCoding.display = "II grupi mootorsõidukijuhi tervisekontroll"
* item[=].answerOption[2].valueCoding.system = $HDC
* item[=].answerOption[2].valueCoding.code = #occupational
* item[=].answerOption[2].valueCoding.display = "Töötervishoiu tervisekontroll"
* item[=].answerOption[3].valueCoding.system = $HDC
* item[=].answerOption[3].valueCoding.code = #military-service
* item[=].answerOption[3].valueCoding.display = "Kaitseväeteenistuse tervisekontroll"
* item[=].required = true
* item[=].readOnly = true
* item[=].repeats = true
* item[=].text = "Kasutusala"

* item[+].linkId = "patient-gender"
* item[=].text = "Sugu"
* item[=].type = #coding
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].required = true
* item[=].readOnly = true

* item[+].linkId = "lifestyle"
* item[=].prefix = "1"
* item[=].code.system = $HDQ
* item[=].code.code = #lifestyle
* item[=].code.display = "Elustiil"
* item[=].type = #group
* item[=].required = true
* item[=].text = "Elustiil"

* item[=].item[0].linkId = "lifestyle.alcohol"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #alcohol
* item[=].item[=].code.display = "Kas te tarbite alkoholi?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[=].text = "Kas te tarbite alkoholi?"

* item[=].item[=].item[0].linkId = "lifestyle.alcohol.alcohol-units"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #alcohol-units
* item[=].item[=].item[=].code.display = "Mitu ühikut nädalas? (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].enableWhen.question = "lifestyle.alcohol"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].text = "Mitu ühikut nädalas?"

* item[=].item[+].linkId = "lifestyle.smoking"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #smoking
* item[=].item[=].code.display = "Kas te suitsetate?"
* item[=].item[=].text = "Kas te suitsetate?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.smoking.smoking-amount"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #smoking-amount
* item[=].item[=].item[=].code.display = "Mitu sigaretti päevas?"
* item[=].item[=].item[=].text = "Mitu sigaretti päevas?"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "lifestyle.smoking.smoking-period"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #smoking-period
* item[=].item[=].item[=].code.display = "Mitu aastat olete järjest suitsetanud"
* item[=].item[=].item[=].text = "Mitu aastat olete järjest suitsetanud?"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "lifestyle.smoking.smoking-quit"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #smoking-quit
* item[=].item[=].item[=].code.display = "Kui olete loobunud suitsetamisest, siis millal loobusite?"
* item[=].item[=].item[=].text = "Kui olete loobunud suitsetamisest, siis millal loobusite?"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "lifestyle.smoking"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "lifestyle.narcotics"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #narcotics
* item[=].item[=].code.display = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].text = "Kas tarvitate narkootilisi/psühhotroopseid aineid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.narcotics.narcotics-frequency"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #narcotics-frequency
* item[=].item[=].item[=].code.display = "Kirjeldage kui sageli"
* item[=].item[=].item[=].text = "Kirjeldage, kui sageli"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "lifestyle.narcotics"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "lifestyle.medication"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #medication-influence
* item[=].item[=].code.display = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].text = "Kas kasutate ravimeid, mis võivad Teie arvates mõjutada Teie keskendumisvõimet ja koordinatsiooni?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "lifestyle.medication.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "lifestyle.medication"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "work-environment"
* item[=].prefix = "2"
* item[=].code.system = $HDQ
* item[=].code.code = #work-environment
* item[=].code.display = "Töökeskkond"
* item[=].text = "Töökeskkond"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "work-environment.work-restrictions"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #work-restrictions
* item[=].item[=].code.display = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].text = "Kas Teile on tervisekontrolli põhjal varem seatud tööpiiranguid? Kui jah, mille tõttu?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work-environment.work-restrictions.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work-environment.work-restrictions"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "work-environment.work-health-problems"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #work-health-problems
* item[=].item[=].code.display = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].text = "Kas Teil esineb või on esinenud tervisehäireid, mida seostate oma tööülesannete täitmise või töökeskkonnaga?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work-environment.work-health-problems.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work-environment.work-health-problems"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "work-environment.occupational-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #occupational-disease
* item[=].item[=].code.display = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].text = "Kas Teil on diagnoositud kutsehaigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #occupational
* item[=].item[=].required = true

* item[=].item[+].linkId = "work-environment.work-related-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #work-related-disease
* item[=].item[=].code.display = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].text = "Kas Teil on diagnoositud tööst põhjustatud haigus?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #occupational
* item[=].item[=].required = true

* item[=].item[+].linkId = "work-environment.ppe-problems"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #ppe-problems
* item[=].item[=].code.display = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].text = "Kas tööl kasutatavad isikukaitsevahendid põhjustavad Teile terviseprobleeme?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "category"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #occupational
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "work-environment.ppe-problems.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "work-environment.ppe-problems"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true


* item[+].linkId = "allergies"
* item[=].prefix = "3"
* item[=].code.system = $HDQ
* item[=].code.code = #allergies
* item[=].code.display = "Allergiad"
* item[=].text = "Allergiad"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "allergies.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "allergies.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "allergies.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-allergiad"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "allergies.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "allergies.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "allergies.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.medication-allergy"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #medication-allergy
* item[=].item[=].code.display = "Allergia ravimitele (palun täpsustage)"
* item[=].item[=].text = "Allergia ravimitele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.medication-allergy.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.medication-allergy"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.food-allergy"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #food-allergy
* item[=].item[=].code.display = "Allergia toiduainetele (palun täpsustage)"
* item[=].item[=].text = "Allergia toiduainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.food-allergy.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.food-allergy"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.pollen-allergy"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #pollen-allergy
* item[=].item[=].code.display = "Allergia õietolmule (palun täpsustage)"
* item[=].item[=].text = "Allergia õietolmule (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.pollen-allergy.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.pollen-allergy"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.pets-allergy"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #pets-allergy
* item[=].item[=].code.display = "Allergia koduloomadele või -lindudele (palun täpsustage)"
* item[=].item[=].text = "Allergia koduloomadele või -lindudele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.pets-allergy.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.pets-allergy"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "allergies.other-allergies"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-allergies
* item[=].item[=].code.display = "Allergia muudele ainetele (palun täpsustage)"
* item[=].item[=].text = "Allergia muudele ainetele (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "allergies.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "allergies.other-allergies.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "allergies.other-allergies"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "mental-health"
* item[=].prefix = "4"
* item[=].code.system = $HDQ
* item[=].code.code = #mental-health
* item[=].code.display = "Psüühika"
* item[=].text = "Psüühika"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "mental-health.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "mental-health.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "mental-health.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-psyyhika"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "mental-health.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "mental-health.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.depression"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #depression
* item[=].item[=].code.display = "Depressioon"
* item[=].item[=].text = "Depressioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.depression.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.depression"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.schizophrenia"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #schizophrenia
* item[=].item[=].code.display = "Skisofreenia"
* item[=].item[=].text = "Skisofreenia"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.schizophrenia.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.schizophrenia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.fear-working-alone"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #fear-working-alone
* item[=].item[=].code.display = "Kartus töötada üksinda"
* item[=].item[=].text = "Kartus töötada üksinda"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.fear-working-alone.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.fear-working-alone"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.fear-closed-spaces"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #fear-closed-spaces
* item[=].item[=].code.display = "Hirm suletud ruumi ees"
* item[=].item[=].text = "Hirm suletud ruumi ees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.fear-closed-spaces.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.fear-closed-spaces"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.fear-heights"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #fear-heights
* item[=].item[=].code.display = "Kõrgusekartus"
* item[=].item[=].text = "Kõrgusekartus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.fear-heights.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.fear-heights"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "mental-health.frequent-stress"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #frequent-stress
* item[=].item[=].code.display = "Sagedane stress"
* item[=].item[=].text = "Sagedane stress"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "mental-health.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "mental-health.frequent-stress.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "mental-health.frequent-stress"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "nervous-system"
* item[=].prefix = "5"
* item[=].code.system = $HDQ
* item[=].code.code = #nervous-system
* item[=].code.display = "Närvisüsteem"
* item[=].text = "Närvisüsteem"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "nervous-system.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "nervous-system.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "nervous-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-narvisysteem"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "nervous-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "nervous-system.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.syncope"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #syncope
* item[=].item[=].code.display = "Teadvuse kaotuse hood"
* item[=].item[=].text = "Teadvuse kaotuse hood"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.syncope.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.syncope"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.seizures"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #seizures
* item[=].item[=].code.display = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].text = "Krambihood (epilepsia ehk langetõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.seizures.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.seizures"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.balance-disorder"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #balance-disorder
* item[=].item[=].code.display = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].text = "Tasakaaluhäired (sh Meniere'i tõbi)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.balance-disorder.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.balance-disorder"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.stroke"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #stroke
* item[=].item[=].code.display = "Ajuinfarkt või ajuinsult"
* item[=].item[=].text = "Ajuinfarkt või ajuinsult"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.stroke.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.stroke"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.seasickness"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #seasickness
* item[=].item[=].code.display = "Merehaigus"
* item[=].item[=].text = "Merehaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.seasickness.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.seasickness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.coordination-disorder"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #coordination-disorder
* item[=].item[=].code.display = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].text = "Koordinatsioonihäired (sh. kätega seonduvad)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen[0].question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerBoolean = false
* item[=].item[=].enableWhen[1].question = "category"
* item[=].item[=].enableWhen[1].operator = #=
* item[=].item[=].enableWhen[1].answerCoding = #occupational
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.coordination-disorder.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.coordination-disorder"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nervous-system.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "nervous-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nervous-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "nervous-system.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "eyes-vision"
* item[=].prefix = "6"
* item[=].code.system = $HDQ
* item[=].code.code = #eyes-vision
* item[=].code.display = "Silmad ja nägemine"
* item[=].text = "Silmad ja nägemine"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "eyes-vision.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "eyes-vision.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "eyes-vision.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "eyes-vision.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "eyes-vision.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "eyes-vision.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.myopia"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #myopia
* item[=].item[=].code.display = "Lühinägevus"
* item[=].item[=].text = "Lühinägevus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.myopia.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.myopia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.hyperopia"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hyperopia
* item[=].item[=].code.display = "Kaugnägelikkus (hüperoopia)"
* item[=].item[=].text = "Kaugnägelikkus (hüperoopia)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.hyperopia.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.hyperopia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.limited-view"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #limited-view
* item[=].item[=].code.display = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].text = "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.limited-view.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.limited-view"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.double-vision"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #double-vision
* item[=].item[=].code.display = "Kahelinägemine"
* item[=].item[=].text = "Kahelinägemine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.double-vision.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.double-vision"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.colour-vision-disorder"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #colour-vision-disorder
* item[=].item[=].code.display = "Värvusmeele häired"
* item[=].item[=].text = "Värvusmeele häired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.colour-vision-disorder.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.colour-vision-disorder"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "eyes-vision.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "eyes-vision.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "eyes-vision.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "eyes-vision.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "ear-nose-throat"
* item[=].prefix = "7"
* item[=].code.system = $HDQ
* item[=].code.code = #ear-nose-throat
* item[=].code.display = "Kõrv, nina, neel"
* item[=].text = "Kõrv, nina, neel"
* item[=].type = #group
* item[=].required = true

// //continue
// * item[=].item[0].linkId = "ear-nose-throat.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-korv-nina-neel"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "ear-nose-throat.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "ear-nose-throat.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "ear-nose-throat.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.hearing-loss"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hearing-loss
* item[=].item[=].code.display = "Kuulmislangus"
* item[=].item[=].text = "Kuulmislangus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.hearing-loss.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.hearing-loss"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.allergic-rhinitis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #allergic-rhinitis
* item[=].item[=].code.display = "Allergiline nohu"
* item[=].item[=].text = "Allergiline nohu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.allergic-rhinitis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.allergic-rhinitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.chronic-sinusitis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #chronic-sinusitis
* item[=].item[=].code.display = "Otsmiku- või põskkoopa krooniline põletik"
* item[=].item[=].text = "Otsmiku- või põskkoopa krooniline põletik"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.chronic-sinusitis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.chronic-sinusitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.nasal-obstruction"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #nasal-obstruction
* item[=].item[=].code.display = "Ninahingamise takistus"
* item[=].item[=].text = "Ninahingamise takistus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.nasal-obstruction.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.nasal-obstruction"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.frequent-throat-infection"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #frequent-throat-infection
* item[=].item[=].code.display = "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
* item[=].item[=].text = "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.frequent-throat-infection.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.frequent-throat-infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "ear-nose-throat.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "ear-nose-throat.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "ear-nose-throat.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "ear-nose-throat.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "respiratory-system"
* item[=].prefix = "8"
* item[=].code.system = $HDQ
* item[=].code.code = #respiratory-system
* item[=].code.display = "Hingamissüsteem"
* item[=].text = "Hingamissüsteem"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "respiratory-system.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "respiratory-system.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "respiratory-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-hingamissysteem"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "respiratory-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "respiratory-system.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory-system.asthma"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #asthma
* item[=].item[=].code.display = "Astma"
* item[=].item[=].text = "Astma"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory-system.asthma.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory-system.asthma"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory-system.copd"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #copd
* item[=].item[=].code.display = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].text = "Krooniline obstruktiivne kopsuhaigus ehk KOK"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory-system.copd.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory-system.copd"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory-system.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory-system.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "respiratory-system.sleep-apnoea"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #sleep-apnoea
* item[=].item[=].code.display = "Uneapnoe"
* item[=].item[=].text = "Uneapnoe"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "respiratory-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "respiratory-system.sleep-apnoea.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "respiratory-system.sleep-apnoea"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "metabolic-disorder"
* item[=].prefix = "9"
* item[=].code.system = $HDQ
* item[=].code.code = #metabolic-disorder
* item[=].code.display = "Ainevahetuse häired (sh kilpnäärme haigused)"
* item[=].text = "Ainevahetuse häired (sh kilpnäärme haigused)"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "metabolic-disorder.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "metabolic-disorder.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.written-description"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "metabolic-disorder.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "metabolic-disorder.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "metabolic-disorder.diabetes"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #diabetes
* item[=].item[=].code.display = "Suhkruhaigus"
* item[=].item[=].text = "Suhkruhaigus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "metabolic-disorder.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "metabolic-disorder.diabetes.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "metabolic-disorder.diabetes"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "metabolic-disorder.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "metabolic-disorder.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "metabolic-disorder.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "metabolic-disorder.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "cardiovascular-system"
* item[=].prefix = "10"
* item[=].code.system = $HDQ
* item[=].code.code = #cardiovascular-system
* item[=].code.display = "Süda ja veresoonkond"
* item[=].text = "Süda ja veresoonkond"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "cardiovascular-system.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-syda-ja-veresoonkond"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "cardiovascular-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "cardiovascular-system.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.chest-pain-activity"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #chest-pain-activity
* item[=].item[=].code.display = "Koormusega seonduv valu rinnus"
* item[=].item[=].text = "Koormusega seonduv valu rinnus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.chest-pain-activity.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.chest-pain-activity"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.high-blood-pressure"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #high-blood-pressure
* item[=].item[=].code.display = "Kõrge vererõhk"
* item[=].item[=].text = "Kõrge vererõhk"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.high-blood-pressure.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.high-blood-pressure"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.heart-attack"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #heart-attack
* item[=].item[=].code.display = "Läbipõetud südameinfarkt"
* item[=].item[=].text = "Läbipõetud südameinfarkt"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.heart-attack.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.heart-attack"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.arrhythmia"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #arrhythmia
* item[=].item[=].code.display = "Südame rütmihäired"
* item[=].item[=].text = "Südame rütmihäired"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.arrhythmia.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.arrhythmia"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.angioplasty-stenting"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #angioplasty-stenting
* item[=].item[=].code.display = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].text = "On tehtud südamesondeerimine või stentimine"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.angioplasty-stenting.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.angioplasty-stenting"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.pacer"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #pacer
* item[=].item[=].code.display = "On paigaldatud südamerütmur"
* item[=].item[=].text = "On paigaldatud südamerütmur"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.pacer.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.pacer"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.heart-surgery"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #heart-operation
* item[=].item[=].code.display = "On tehtud südameoperatsioon"
* item[=].item[=].text = "On tehtud südameoperatsioon"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.heart-surgery.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.heart-surgery"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "cardiovascular-system.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "cardiovascular-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "cardiovascular-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "cardiovascular-system.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "bones-joints-muscles"
* item[=].prefix = "11"
* item[=].code.system = $HDQ
* item[=].code.code = #bones-joints-muscles
* item[=].code.display = "Luud, liigesed ja lihased"
* item[=].text = "Luud, liigesed ja lihased"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "bones-joints-muscles.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "bones-joints-muscles.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "bones-joints-muscles.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.joint-stiffness"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #joint-stiffness
* item[=].item[=].code.display = "Liigesejäikus"
* item[=].item[=].text = "Liigesejäikus"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.joint-stiffness.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.joint-stiffness"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.limb-paralysis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #limb-paralysis
* item[=].item[=].code.display = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].text = "Jäseme osaline või täielik halvatus (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.limb-paralysis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.limb-paralysis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.missing-limb"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #missing-limb
* item[=].item[=].code.display = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].text = "Jäseme või selle osa puudumine (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.missing-limb.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.missing-limb"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.tremor"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #tremor
* item[=].item[=].code.display = "Käte värisemine (treemor)"
* item[=].item[=].text = "Käte värisemine (treemor)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.tremor.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.tremor"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.joint-pain"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #joint-pain
* item[=].item[=].code.display = "Liigesevalu"
* item[=].item[=].text = "Liigesevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.joint-pain.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.joint-pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.neck-pain"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #neck-pain
* item[=].item[=].code.display = "Kaelavalu"
* item[=].item[=].text = "Kaelavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.neck-pain.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.neck-pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.shoulder-pain"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #shoulder-pain
* item[=].item[=].code.display = "Õlavöötmevalu"
* item[=].item[=].text = "Õlavöötmevalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.shoulder-pain.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.shoulder-pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.lower-back-pain"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #lower-back-pain
* item[=].item[=].code.display = "Alaseljavalu"
* item[=].item[=].text = "Alaseljavalu"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.lower-back-pain.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.lower-back-pain"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "bones-joints-muscles.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "bones-joints-muscles.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "bones-joints-muscles.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "bones-joints-muscles.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "infections"
* item[=].prefix = "12"
* item[=].code.system = $HDQ
* item[=].code.code = #infections
* item[=].code.display = "Nakkushaigused"
* item[=].text = "Nakkushaigused"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "infections.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "infections.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "infections.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-nakkushaigused"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "infections.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "infections.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "infections.no-known-illness"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-known-illness
* item[=].item[=].code.display = "Teadaolevalt ei ole põdenud"
* item[=].item[=].text = "Teadaolevalt ei ole põdenud"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "infections.tuberculosis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #tuberculosis
* item[=].item[=].code.display = "Tuberkuloos"
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.tuberculosis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.tuberculosis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.hepatitis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hepatitis
* item[=].item[=].code.display = "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
* item[=].item[=].text = "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.hepatitis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.hepatitis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.hiv"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hiv
* item[=].item[=].code.display = "HIV kandja"
* item[=].item[=].text = "HIV kandja"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.hiv.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.hiv"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.aids"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #aids
* item[=].item[=].code.display = "AIDS"
* item[=].item[=].text = "AIDS"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.aids.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.aids"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.intestinal-infection"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #intestinal-infection
* item[=].item[=].code.display = "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
* item[=].item[=].text = "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.intestinal-infection.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.intestinal-infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.respiratory-infection"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #respiratory-infection
* item[=].item[=].code.display = "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
* item[=].item[=].text = "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.respiratory-infection.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.respiratory-infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.skin-infection"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #skin-infection
* item[=].item[=].code.display = "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
* item[=].item[=].text = "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.skin-infection.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.skin-infection"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "infections.other-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease
* item[=].item[=].code.display = "Muu haigus (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Muu haigus (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "infections.no-known-illness"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "infections.other-disease.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "infections.other-disease"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "other-chronic-disorders"
* item[=].prefix = "13"
* item[=].code.system = $HDQ
* item[=].code.code = #other-chronic-disorders
* item[=].code.display = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
* item[=].text = "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "other-chronic-disorders.none"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #none
* item[=].item[=].code.display = "Hetkel puuduvad"
* item[=].item[=].text = "Hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "other-chronic-disorders.disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #disease-condition-symptom
* item[=].item[=].code.display = "Haigus/seisund/sümptom (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Haigus/seisund/sümptom (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "other-chronic-disorders.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "other-chronic-disorders.disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "other-chronic-disorders.disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "previous-treatment"
* item[=].prefix = "14"
* item[=].code.system = $HDQ
* item[=].code.code = #previous-treatment
* item[=].code.display = "Senine ravi"
* item[=].text = "Senine ravi"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "previous-treatment.treatment-abroad"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #treatment-abroad-five-years
* item[=].item[=].code.display = "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].text = "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "previous-treatment.treatment-abroad.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "previous-treatment.treatment-abroad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "previous-treatment.regular-medication"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #regular-medication
// * item[=].item[=].code.display = "Regulaarsed ravimid"
* item[=].item[=].text = "Regulaarsed ravimid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-women"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #regular-medication-women
* item[=].item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "patient-gender"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #female
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-women.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "previous-treatment.regular-medication.regular-medication-women"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true


* item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.regular-medication-men"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #regular-medication-men
* item[=].item[=].item[=].code.display = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
* item[=].item[=].item[=].text = "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "patient-gender"
* item[=].item[=].item[=].enableWhen.operator = #!=
* item[=].item[=].item[=].enableWhen.answerCoding = #female
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.regular-medication-men.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "previous-treatment.regular-medication.regular-medication-men"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #current-prescriptions
* item[=].item[=].item[=].code.display = "Viimase 9 kuu jooksul välja kirjutatud retseptid"
* item[=].item[=].item[=].text = "Viimase 9 kuu jooksul välja kirjutatud retseptid"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.regular-medication.current-prescriptions.date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.atc"
* item[=].item[=].item[=].item[=].text = "ATC"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.package"
* item[=].item[=].item[=].item[=].text = "Pakend"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.regular-medication.current-prescriptions.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "previous-treatment.hospitalization"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hospitalization-five-years
* item[=].item[=].code.display = "Kas olete viimase 5 aasta jooksul viibinud haiglaravil? "
* item[=].item[=].text = "Kas olete viimase 5 aasta jooksul viibinud haiglaravil? "
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "previous-treatment.hospitalization.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "previous-treatment.hospitalization"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case"
* item[=].item[=].item[=].text = "Statsionaarne haigusjuhtum"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.hospitalization.inpatient-case.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.to"
* item[=].item[=].item[=].item[=].text = "Kuni"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.provider"
* item[=].item[=].item[=].item[=].text = "Tervishoiuasutus"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.hospitalization.inpatient-case.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "previous-treatment.surgeries"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #operations-five-years
* item[=].item[=].code.display = "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].text = "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "previous-treatment.surgeries.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "previous-treatment.surgeries"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false


* item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery"
* item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "previous-treatment.surgeries.surgery.surgery-date"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.code"
* item[=].item[=].item[=].item[=].text = "Operatsioon"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.surgery-add-code"
* item[=].item[=].item[=].item[=].text = "Operatsioon lisakoodid"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "previous-treatment.surgeries.surgery.source-reference"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[+].linkId = "traumas"
* item[=].prefix = "15"
* item[=].code.system = $HDQ
* item[=].code.code = #traumas
* item[=].code.display = "Traumad"
* item[=].text = "Traumad"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "traumas.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "traumas.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "traumas.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-traumad"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "traumas.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "traumas.none"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #none
* item[=].item[=].code.display = "Hetkel puuduvad"
* item[=].item[=].text = "Hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.fractures"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #fractures
* item[=].item[=].code.display = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Luumurrud (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "traumas.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.fractures.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.fractures"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.head-traumas"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #head-traumas
* item[=].item[=].code.display = "Rasked peavigastused"
* item[=].item[=].text = "Rasked peavigastused"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen[0].question = "traumas.none"
* item[=].item[=].enableWhen[0].operator = #=
* item[=].item[=].enableWhen[0].answerBoolean = false
* item[=].item[=].enableWhen[1].question = "category"
* item[=].item[=].enableWhen[1].operator = #=
* item[=].item[=].enableWhen[1].answerCoding = #occupational
* item[=].item[=].enableBehavior = #all
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.head-traumas.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.head-traumas"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "traumas.other-injuries"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-injuries
* item[=].item[=].code.display = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].text = "Muud olulised vigastused (palun täpsustage, millised ja millal)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "traumas.none"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "traumas.other-injuries.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "traumas.other-injuries"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "pregnancy"
* item[=].prefix = "16"
* item[=].code.system = $HDQ
* item[=].code.code = #pregnancy
* item[=].code.display = "Kas olete praegu rase?"
* item[=].text = "Kas olete praegu rase?"
* item[=].type = #boolean
* item[=].enableWhen.question = "patient-gender"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #female
* item[=].required = true

* item[+].linkId = "skin-disorders"
* item[=].prefix = "17"
* item[=].code.system = $HDQ
* item[=].code.code = #skin-disorders-five-years
* item[=].code.display = "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"
* item[=].text = "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "skin-disorders.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "skin-disorders.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "skin-disorders.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-nahahaigused"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "skin-disorders.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "skin-disorders.skin-conditions"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #skin-disorders
* item[=].item[=].code.display = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].text = "Nahahaigused: millal põdenud, milliseid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "skin-disorders.skin-conditions.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "skin-disorders.skin-conditions"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "digestive-organs"
* item[=].prefix = "18"
* item[=].code.system = $HDQ
* item[=].code.code = #digestive-organs
* item[=].code.display = "Seedeelundid"
* item[=].text = "Seedeelundid"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "digestive-organs.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "digestive-organs.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "digestive-organs.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-seedeelundid"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "digestive-organs.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "digestive-organs.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "digestive-organs.liver-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #liver-disease
* item[=].item[=].code.display = "Maksahaigused"
* item[=].item[=].text = "Maksahaigused"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive-organs.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive-organs.liver-disease.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive-organs.liver-disease"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive-organs.gallstones"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #gallstones
* item[=].item[=].code.display = "Sapikivid"
* item[=].item[=].text = "Sapikivid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive-organs.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive-organs.gallstones.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive-organs.gallstones"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive-organs.gastric-duodenal-ulcers"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #gastric-duodenal-ulcers
* item[=].item[=].code.display = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].text = "Mao- ja kaksteistsõrmiksoole haavandid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive-organs.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive-organs.gastric-duodenal-ulcers.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive-organs.gastric-duodenal-ulcers"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive-organs.colitis-crohns-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #colitis-crohns-disease
* item[=].item[=].code.display = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].text = "Haavandiline koliit või Crohni tõbi"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive-organs.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive-organs.colitis-crohns-disease.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive-organs.colitis-crohns-disease"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "digestive-organs.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "digestive-organs.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "digestive-organs.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "digestive-organs.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "urogenital-system"
* item[=].prefix = "19"
* item[=].code.system = $HDQ
* item[=].code.code = #urogenital-system
* item[=].code.display = "Kuse- ja suguelundid"
* item[=].text = "Kuse- ja suguelundid"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "urogenital-system.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "urogenital-system.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "urogenital-system.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "urogenital-system.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "urogenital-system.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "urogenital-system.kidney-diseases"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #kidney-diseases
* item[=].item[=].code.display = "Neerude haigused"
* item[=].item[=].text = "Neerude haigused"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "urogenital-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "urogenital-system.kidney-diseases.kidney-stones"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #kidney-stones
* item[=].item[=].item[=].code.display = "Neerukivitõbi"
* item[=].item[=].item[=].text = "Neerukivitõbi"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "urogenital-system.kidney-diseases.kidney-stones.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "urogenital-system.kidney-diseases.kidney-stones"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "urogenital-system.kidney-diseases.renal-insufficiency"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #renal-insufficiency
* item[=].item[=].item[=].code.display = "Neerupuudulikkus"
* item[=].item[=].item[=].text = "Neerupuudulikkus"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "urogenital-system.kidney-diseases.renal-insufficiency.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "urogenital-system.kidney-diseases.renal-insufficiency"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "urogenital-system.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "urogenital-system.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "urogenital-system.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "urogenital-system.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "blood-problems"
* item[=].prefix = "20"
* item[=].code.system = $HDQ
* item[=].code.code = #blood-problems
* item[=].code.display = "Verehaigused"
* item[=].text = "Verehaigused"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "blood-problems.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "blood-problems.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "blood-problems.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-verehaigused"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "blood-problems.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "blood-problems.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "blood-problems.no-complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-complaints
* item[=].item[=].code.display = "Kaebused hetkel puuduvad"
* item[=].item[=].text = "Kaebused hetkel puuduvad"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "blood-problems.blood-disease"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #blood-disease
* item[=].item[=].code.display = "Verehaigused (palun täpsustage, millised)"
* item[=].item[=].text = "Verehaigused (palun täpsustage, millised)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "blood-problems.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "blood-problems.blood-disease.anemia"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #anemia
* item[=].item[=].item[=].code.display = "Aneemia ehk kehvveresus"
* item[=].item[=].item[=].text = "Aneemia ehk kehvveresus"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "blood-problems.blood-disease.anemia.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "blood-problems.blood-disease.anemia"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "blood-problems.other-disease-condition-symptom"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-disease-condition-symptom
* item[=].item[=].code.display = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].text = "Muu haigus/seisund/sümptom (palun täpsustage)"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "blood-problems.no-complaints"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "blood-problems.other-disease-condition-symptom.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "blood-problems.other-disease-condition-symptom"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "medical-devices"
* item[=].prefix = "21"
* item[=].code.system = $HDQ
* item[=].code.code = #medical-devices
* item[=].code.display = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"
* item[=].text = "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"
* item[=].type = #group
* item[=].required = true

* item[=].item[+].linkId = "medical-devices.no-devices"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #no-devices
* item[=].item[=].code.display = "Ei kasuta"
* item[=].item[=].text = "Ei kasuta"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.glasses"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #glasses
* item[=].item[=].code.display = "Prillid"
* item[=].item[=].text = "Prillid"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.glasses.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.glasses"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.contact-lenses"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #contact-lenses
* item[=].item[=].code.display = "Kontaktläätsed"
* item[=].item[=].text = "Kontaktläätsed"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.contact-lenses.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.contact-lenses"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.hearing-aid"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #hearing-aid
* item[=].item[=].code.display = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].text = "Kuuldeaparaat/kohleaarimplantaat"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.hearing-aid.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.hearing-aid"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.arm-prosthesis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #arm-prosthesis
* item[=].item[=].code.display = "Käeprotees"
* item[=].item[=].text = "Käeprotees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.arm-prosthesis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.arm-prosthesis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.leg-prosthesis"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #leg-prosthesis
* item[=].item[=].code.display = "Jalaprotees"
* item[=].item[=].text = "Jalaprotees"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.leg-prosthesis.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.leg-prosthesis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.mobility-device"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #mobility-device
* item[=].item[=].code.display = "Liikumise abivahend"
* item[=].item[=].text = "Liikumise abivahend"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.mobility-device.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.mobility-device"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.other-device"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #other-device
* item[=].item[=].code.display = "Muu abivahend"
* item[=].item[=].text = "Muu abivahend"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "medical-devices.other-device.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "medical-devices.other-device"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.cpap"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #cpap
* item[=].item[=].code.display = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].text = "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[=].item[+].linkId = "medical-devices.mandibular-splint"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #mandibular-splint
* item[=].item[=].code.display = "Intraoraalne uneapnoe seade"
* item[=].item[=].text = "Intraoraalne uneapnoe seade"
* item[=].item[=].type = #boolean
* item[=].item[=].enableWhen.question = "medical-devices.no-devices"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].required = true

* item[+].linkId = "sleep"
* item[=].prefix = "22"
* item[=].code.system = $HDQ
* item[=].code.code = #sleep
* item[=].code.display = "Uni"
* item[=].text = "Uni"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "sleep.diagnoses-group"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #previous-diagnoses
// * item[=].item[=].code.display = "Varasemad diagnoosid"
// * item[=].item[=].text = "Varasemad diagnoosid"
// * item[=].item[=].type = #group
// * item[=].item[=].required = false

* item[=].item[0].linkId = "sleep.previous-diagnosis"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #previous-diagnosis-singular
// * item[=].item[=].item[=].code.display = "Varasem diagnoos"
* item[=].item[=].text = "Varasem diagnoos"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = true

* item[=].item[=].item[0].linkId = "sleep.previous-diagnosis.diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Diagnoos"
* item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/td-uni"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.written-diagnosis"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #written-diagnosis
// * item[=].item[=].item[=].item[=].code.display = "Sõnaline diagnoos"
* item[=].item[=].item[=].text = "Sõnaline diagnoos"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "sleep.previous-diagnosis.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "sleep.loud-snoring"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #loud-snoring
* item[=].item[=].code.display = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].text = "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.loud-snoring.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.loud-snoring"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "sleep.fatigue"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #fatigue
* item[=].item[=].code.display = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].text = "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.fatigue.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.fatigue"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "sleep.breath-stop-sleep"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #breath-stop-sleep
* item[=].item[=].code.display = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].text = "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sleep.breath-stop-sleep.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "sleep.breath-stop-sleep"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[+].linkId = "health-assessment"
* item[=].prefix = "23"
* item[=].code.system = $HDQ
* item[=].code.code = #health-assessment
* item[=].code.display = "Hinnang enda terviseseisundile"
* item[=].text = "Hinnang enda terviseseisundile"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "health-assessment.patient-health-assessment"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #patient-health-assessment
* item[=].item[=].code.display = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].text = "Milline on Teie hinnang oma tervisele?"
* item[=].item[=].type = #coding
* item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/hinnang-terviseseisundile"
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.patient-health-assessment.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[=].item[+].linkId = "health-assessment.illness-past-year"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #illness-past-year
* item[=].item[=].code.display = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].text = "Kas olete viimase aasta jooksul olnud haige?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.illness-past-year.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "health-assessment.illness-past-year"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "health-assessment.complaints"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #complaints
* item[=].item[=].code.display = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].text = "Kas Teil on enda tervise osas kaebusi?"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.complaints.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsutus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "health-assessment.complaints"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "health-assessment.sick-leave-certs"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #sick-leave-certs
* item[=].item[=].code.display = "Haiguslehed"
* item[=].item[=].text = "Haiguslehed"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.sick-leave-certs.foreign-sick-leave-cert-length"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #foreign-sick-leave-cert-length
* item[=].item[=].item[=].code.display = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].text = "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #sick-leave
* item[=].item[=].item[=].code.display = "Haigusleht"
* item[=].item[=].item[=].text = "Haigusleht"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.from"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.duration"
* item[=].item[=].item[=].item[=].text = "Kestus päevades"
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.sick-leave-certs.sick-leave-cert.diagnosis"
* item[=].item[=].item[=].item[=].text = "Diagnoos"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #partial-work-capacity-loss
* item[=].item[=].code.display = "Osaline töövõime"
* item[=].item[=].text = "Osaline töövõime"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #partial-work-capacity-loss-abroad
* item[=].item[=].item[=].code.display = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].text = "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsusta"
* item[=].item[=].item[=].item[=].text = "Täpsusta"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].enableWhen.question = "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #partial-work-disability
// * item[=].item[=].item[=].code.display = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].text = "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.from"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #from
// * item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.to"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #to
// * item[=].item[=].item[=].item[=].code.display = "kuni"
* item[=].item[=].item[=].item[=].text = "kuni"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.partial-work-capacity-loss.partial-work-disability.work-capacity-type"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #work-capacity-type
* item[=].item[=].item[=].item[=].code.display = "Töövõimeliik"
* item[=].item[=].item[=].item[=].text = "Töövõimeliik"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/toovoime-liik"

* item[=].item[+].linkId = "health-assessment.disability"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #disability
* item[=].item[=].code.display = "Puue"
* item[=].item[=].text = "Puue"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "health-assessment.disability.disability-abroad"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #disability-abroad
* item[=].item[=].item[=].code.display = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].text = "Kas Teil on välisriigis tuvastatud puue?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "health-assessment.disability.disability-abroad.disability-severity"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #disability-severity
* item[=].item[=].item[=].item[=].code.display = "Puude raskusaste"
* item[=].item[=].item[=].item[=].text = "Puude raskusaste"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].enableWhen.question = "health-assessment.disability.disability-abroad"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[+].linkId = "health-assessment.disability.disability-data"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #disability-data
* item[=].item[=].item[=].code.display = "Puue (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].text = "Puue (andmed Sotsiaalkindlustusametist)"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "health-assessment.disability.disability-data.from"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #from
// * item[=].item[=].item[=].item[=].code.display = "Alates"
* item[=].item[=].item[=].item[=].text = "Alates"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.disability.disability-data.to"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #to
// * item[=].item[=].item[=].item[=].code.display = "kuni"
* item[=].item[=].item[=].item[=].text = "kuni"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "health-assessment.disability.disability-data.disability-severity"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #disability-severity
// * item[=].item[=].item[=].item[=].code.display = "Puude raskusaste"
* item[=].item[=].item[=].item[=].text = "Puude raskusaste"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/puude-raskusaste"

* item[+].linkId = "immunization"
* item[=].prefix = "24"
* item[=].code.system = $HDQ
* item[=].code.code = #immunization
* item[=].code.display = "Immuniseerimine"
* item[=].text = "Immuniseerimine"
* item[=].type = #group
* item[=].enableWhen.question = "category"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #occupational
* item[=].required = true

* item[=].item[0].linkId = "immunization.b-hepatitis"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #101
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].text = "B-viirushepatiit"

* item[=].item[=].item[0].linkId = "immunization.b-hepatitis.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #heptatitis-B-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.b-hepatitis.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.b-hepatitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.b-hepatitis.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.b-hepatitis.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.b-hepatitis.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.b-hepatitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tuberculosis"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #110
* item[=].item[=].text = "Tuberkuloos"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tuberculosis.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #tuberculosis-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud tuberkuloosi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuberkuloosi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tuberculosis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tuberculosis.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tuberculosis.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tuberculosis.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tuberculosis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.rotavirus"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #111
* item[=].item[=].text = "Rotaviirus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.rotavirus.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #rotavirus-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.rotavirus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.rotavirus.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.rotavirus.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.rotavirus.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.rotavirus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.diphteria"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #102
* item[=].item[=].text = "Difteeria"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.diphteria.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #diphtheria-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud difteeria vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud difteeria vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.diphteria.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.diphteria.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.diphteria.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.diphteria.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.diphteria.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.diphteria.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tetanus"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #109
* item[=].item[=].text = "Teetanus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tetanus.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #tetanus-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud teetanuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud teetanuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tetanus.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tetanus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tetanus.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tetanus.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tetanus.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tetanus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.pertussis"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #105
* item[=].item[=].text = "Läkaköha"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.pertussis.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #pertussis-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.pertussis.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.pertussis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.pertussis.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.pertussis.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.pertussis.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.pertussis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.polio"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #107
* item[=].item[=].text = "Poliomüeliit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.polio.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #poliovirus-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.polio.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.polio.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.polio.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.polio.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.polio.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.polio.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.hemo-influenza"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #103
* item[=].item[=].text = "Influensa"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.hemo-influenza.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #haemophilus-influenza-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.hemo-influenza.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.hemo-influenza.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.hemo-influenza.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.hemo-influenza.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.hemo-influenza.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.hemo-influenza.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.measles"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #104
* item[=].item[=].text = "Leetrid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.measles.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #measles-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud leetrite vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud leetrite vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.measles.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.measles.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.measles.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.measles.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.measles.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.measles.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.mumps"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #106
* item[=].item[=].text = "Mumps"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.mumps.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #mumps-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud mumpsi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud mumpsi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.mumps.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.mumps.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.mumps.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.mumps.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.mumps.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.mumps.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.rubella"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #108
* item[=].item[=].text = "Punetised"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.rubella.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #rubella-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud punetiste vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud punetiste vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.rubella.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.rubella.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.rubella.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.rubella.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.rubella.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.rubella.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.hpv"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #203
* item[=].item[=].text = "HPV"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.hpv.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #hpv-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.hpv.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.hpv.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.hpv.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.hpv.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.hpv.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.hpv.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.covid"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #219
* item[=].item[=].text = "COVID"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.covid.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #covid-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud COVID vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud COVID vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.covid.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.covid.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.covid.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.covid.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.covid.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.covid.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.flu"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #202
* item[=].item[=].text = "Gripiviirus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.flu.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #influenza-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud gripivaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud gripivaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.flu.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.flu.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.flu.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.flu.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.flu.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.flu.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.pneumococcus"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #210
* item[=].item[=].text = "Pneumokokk"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.pneumococcus.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #pneumococcus-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud pneumokoki vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud pneumokoki vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.pneumococcus.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.pneumococcus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.pneumococcus.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.pneumococcus.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.pneumococcus.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.pneumococcus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.a-hepatitis"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #201
* item[=].item[=].text = "A-hepatiit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.a-hepatitis.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #hepatitis-A-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud A-hepatiidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud A-hepatiidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.a-hepatitis.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.a-hepatitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.a-hepatitis.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.a-hepatitis.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.a-hepatitis.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.a-hepatitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.varicella"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #213
* item[=].item[=].text = "Tuulerõuged"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.varicella.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #varicella-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud tuulerõugete vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud tuulerõugete vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.varicella.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.varicella.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.varicella.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.varicella.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.varicella.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.varicella.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.shingles"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #216
* item[=].item[=].text = "Vöötohatis"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.shingles.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #herpes-zoster-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud vöötohatise vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud vöötohatise vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.shingles.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.shingles.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.shingles.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.shingles.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.shingles.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.shingles.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.meningococcus"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #209
* item[=].item[=].text = "Meningokokk"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.meningococcus.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #meningococcus-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.meningococcus.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.meningococcus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.meningococcus.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.meningococcus.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.meningococcus.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.meningococcus.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.yellow-fever"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #205
* item[=].item[=].text = "Kollapalavik"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.yellow-fever.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #yellow-fever-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud kollapalaviku vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kollapalaviku vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.yellow-fever.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.yellow-fever.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.yellow-fever.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.yellow-fever.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.yellow-fever.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.yellow-fever.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.typhoid-fever"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #207
* item[=].item[=].text = "Kõhutüüfus"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.typhoid-fever.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #typhoid-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.typhoid-fever.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.typhoid-fever.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.typhoid-fever.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.typhoid-fever.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.typhoid-fever.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.typhoid-fever.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.tick-encephalitis"
* item[=].item[=].code.system = $VVH
* item[=].item[=].code.code = #211
* item[=].item[=].text = "Puukentsefaliit"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.tick-encephalitis.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #tick-borne-encephalitis-vac
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "immunization.tick-encephalitis.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.tick-encephalitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.tick-encephalitis.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.tick-encephalitis.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[+].linkId = "immunization.tick-encephalitis.date"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #date
* item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].enableWhen.question = "immunization.tick-encephalitis.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "immunization.other-vac"
// * item[=].item[=].code.system = $HDQ
// * item[=].item[=].code.code = #other-vac
// * item[=].item[=].code.display = "Muud vaktsiinid"
* item[=].item[=].text = "Muud vaktsiinid"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "immunization.other-vac.vac-done"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #other-vaccines-vaccinated
* item[=].item[=].item[=].code.display = "Kas Teile on tehtud muid vaktsiine?"
* item[=].item[=].item[=].text = "Kas Teile on tehtud muid vaktsiine?"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[0].linkId = "immunization.other-vac.vac-done.specification"
* item[=].item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].item[=].enableWhen.question = "immunization.other-vac.vac-done"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].required = false

* item[=].item[=].item[+].linkId = "immunization.other-vac.immunization-his-data"
// * item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].code.code = #immunization
// * item[=].item[=].item[=].code.display = "Immuniseerimine"
* item[=].item[=].item[=].text = "Immuniseerimine"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "immunization.other-vac.vac-done"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[0].linkId = "immunization.other-vac.immunization-his-data.preventable-disease"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #vaccine-preventable-disease
// * item[=].item[=].item[=].item[=].code.display = "vaktsiinvälditav haigus või haigustekitaja"
* item[=].item[=].item[=].item[=].text = "vaktsiinvälditav haigus või haigustekitaja"
* item[=].item[=].item[=].item[=].type = #coding
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.other-vac.immunization-his-data.date"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #date
// * item[=].item[=].item[=].item[=].code.display = "Kuupäev"
* item[=].item[=].item[=].item[=].text = "Kuupäev"
* item[=].item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[=].item[=].item[=].item[+].linkId = "immunization.other-vac.immunization-his-data.source-reference"
// * item[=].item[=].item[=].item[=].code.system = $HDQ
// * item[=].item[=].item[=].item[=].code.code = #source-reference
// * item[=].item[=].item[=].item[=].code.display = "Allika viide"
* item[=].item[=].item[=].item[=].text = "Allika viide"
* item[=].item[=].item[=].item[=].type = #reference
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].readOnly = true

* item[+].linkId = "work-risk-factors"
* item[=].prefix = "25"
* item[=].code.system = $HDQ
* item[=].code.code = #work-risk-factors
* item[=].code.display = "Töökohal esinevad ohutegurid"
* item[=].text = "Töökohal esinevad ohutegurid"
* item[=].type = #group
* item[=].enableWhen.question = "category"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #occupational
* item[=].required = true

* item[=].item[0].linkId = "work-risk-factors.risk-factor"
* item[=].item[=].code.system = $HDQ
* item[=].item[=].code.code = #risk-factor
* item[=].item[=].code.display = "Ohutegur"
* item[=].item[=].type = #coding
* item[=].item[=].answerValueSet = "https://fhir.ee/ValueSet/ohutegurid"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].text = "Ohutegur"

* item[=].item[=].item[0].linkId = "work-risk-factors.risk-factor.specification"
* item[=].item[=].item[=].code.system = $HDQ
* item[=].item[=].item[=].code.code = #specification
* item[=].item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].item[=].text = "Täpsustus"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].required = false
