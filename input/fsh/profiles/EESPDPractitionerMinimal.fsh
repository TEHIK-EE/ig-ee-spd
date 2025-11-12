Profile: EESPDPractitionerMinimal
Parent: EEBasePractitioner
Id: ee-spd-practitioner-minimal 
Title: "EE SPD PractitionerMinimal"
Description: "Tervishoiutöötaja ilma identifikaatorita või ainult THT koodiga. Healthcare professional with no identificator or only THT code, no personal identification code."
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-05-14T11:51:42.3642317+00:00"
* name only HumanName
* name 1..1
* name ^short = "First name and given name of healthcare professional"
* name ^definition = "Tervishoiutöötaja ees- ja perekonnanimi"
* identifier ^short = "Identifier of practitioner is health care specialist code provided by Terviseamet, consisting of one letter and 5 numbers"
* identifier.system = "https://fhir.ee/sid/pro/est/pho" (exactly) 
/** identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    personalIdentifier 0..0 and
    specialistIdentifier 0..*
//* identifier[personalIdentifier] ^short = "Personal identifier of healthcare professional"
//* identifier[personalIdentifier] ^definition = "Tervishoiutöötaja (EE) isikukood"
//* identifier[personalIdentifier].system = "https://fhir.ee/sid/pid/est/ni" (exactly)
//* identifier[personalIdentifier].value only string
* identifier[specialistIdentifier] ^short = "Specialist code assigned from Estonian Health Board consists of one capital letter and five numbers"
* identifier[specialistIdentifier] ^definition = "Tervishoiutöötaja Terviseameti registri registreerimistõendi number. THT kood."
* identifier[specialistIdentifier].system = "https://fhir.ee/sid/pro/est/pho" (exactly) 
* identifier[specialistIdentifier].value only string
* identifier[specialistIdentifier].period ^short = "Validity period (if applicable) of the specialist code"
* identifier[specialistIdentifier].period ^definition = "Tervishoiutöötajatel Terviseameti registri registreerimistõendi kehtivus."*/
* gender 0..0
* qualification.code ^binding.description = "Siia siis vastav loend." //from $erialad-VS (example)
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "code.coding.system"
* qualification ^slicing.rules = #open
* qualification contains
    speciality 0..* and
    proffession 0..*
* qualification[speciality].extension ^short = "Use this extension to represent exact THT code related to this specialty."
* qualification[speciality].code from $erialad-VS
* qualification[speciality] ^short = "ERIALA. Erialade loendist."
* qualification[proffession].code from $tervishoiutootaja-kutse-VS
* qualification[proffession] ^short = "KUTSE."
* qualification[proffession] ^definition = "KUTSE. MEDRE loendi koopia TermX-s. "
* birthDate 0..0
* deceased[x] 0..0
* photo 0..0
* communication 0..0