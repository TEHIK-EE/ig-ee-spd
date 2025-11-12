Profile: EESPDPractitioner
Parent: EEBasePractitioner
Id: ee-spd-practitioner
Title: "EE SPD Practitioner"
Description: "Tervishoiutöötaja. (Nt TTOdes töötavad tervishoiutöötajad, võrdsustatud spetsialistid ja spetsialistid, TTOdes töötavad registraatorid/assistendid,
Kiirabibrigaadi liikmed.) Healthcare professional as Practitioner in SPD"
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* name only HumanName
* name 1..1
* name ^short = "First name and given name of healthcare professional"
* name ^definition = "Tervishoiutöötaja ees- ja perekonnanimi"
* identifier 1..*
* identifier ^short = "Identifier of practitioner can be Estonian personal identification code or health care specialist code provided by Terviseamet, consisting of one letter and 5 numbers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    personalIdentifier 0..1 and
    specialistIdentifier 0..*
* identifier[personalIdentifier] ^short = "Personal identifier of healthcare professional"
* identifier[personalIdentifier] ^definition = "Tervishoiutöötaja (EE) isikukood"
* identifier[personalIdentifier].system = "https://fhir.ee/sid/pid/est/ni" (exactly)
* identifier[personalIdentifier].value only string
* identifier[specialistIdentifier] ^short = "Specialist code assigned from Estonian Health Board consists of one capital letter and five numbers"
* identifier[specialistIdentifier] ^definition = "Tervishoiutöötaja Terviseameti registri registreerimistõendi number. THT kood."
* identifier[specialistIdentifier].system = "https://fhir.ee/sid/pro/est/pho" (exactly) 
* identifier[specialistIdentifier].value only string
* identifier[specialistIdentifier].period ^short = "Validity period (if applicable) of the specialist code"
* identifier[specialistIdentifier].period ^definition = "Tervishoiutöötajatel Terviseameti registri registreerimistõendi kehtivus."
* gender 0..0
//* gender ^short = "Gender of practitioner"
//* gender ^definition = "Tervishoiutöötaja sugu"
* qualification.code ^binding.description = "Siia siis vastav loend." //from $erialad-VS (example)
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
//* qualification from $erialad
* qualification contains
    speciality 0..* and
    proffession 0..*
* qualification.extension contains 
    ExtensionEETISTHTCode named THTcode 0..1
* qualification.extension[THTcode] ^short = "Use this extension to represent exact THT code related to this specialty."
//* qualification[degree].extension contains
//    ExtensionEETISTHTCode named THTcode 0..1
* qualification[speciality] ^short = "Use this extension to represent exact THT code related to this specialty."
* qualification[speciality].code.coding.system from $erialad-VS
* qualification[speciality] ^short = "ERIALA. Erialade loendist."
//* qualification[degree].code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360"
//* qualification[degree].code ^short = "Qualification, education, license"
//* qualification[degree].code ^definition = "KUTSE. VAJAB oma loendit?!? Hetkel tehtud IG jaoks test-termX-is kutse loend."
//* qualification[degree].code from https://fhir.ee/ValueSet/tervishoiutootaja-kutse
//* qualification[degree].code.coding.system = "https://fhir.ee/CodeSystem/tervishoiutootaja-kutse" (exactly)
//* qualification[speciality].code.coding.system = "https://fhir.ee/CodeSystem/erialad"
//* qualification[speciality].code.coding ^binding.description = "https://fhir.ee/CodeSystem/erialad"
//* qualification[speciality].code.coding.system = $erialad-VS
//* qualification[speciality].code.coding.system = "https://fhir.ee/CodeSystem/erialad" (exactly)
//* qualification[speciality] ^short = "ERIALA. Qualification, education, license"
//* qualification[speciality] ^definition = "ERIALA. Erialade loendist. LOEND OLEMAS."
//* qualification[kutse].code.coding.system ^binding.description = "https://fhir.ee/CodeSystem/tervishoiutootaja-kutse"
//* qualification[kutse].code.coding.system = "https://fhir.ee/CodeSystem/tervishoiutootaja-kutse" (exactly)
* qualification[proffession].code.coding.system from $tervishoiutootaja-kutse-VS
* qualification[proffession] ^short = "KUTSE."
* qualification[proffession] ^definition = "KUTSE. MEDRE loendi koopia TermX-s. "
* birthDate 0..0
* deceased[x] 0..0
* photo 0..0
* communication 0..0