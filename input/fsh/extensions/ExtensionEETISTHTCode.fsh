Extension: ExtensionEETISTHTCode
Id: ee-tis-tht-code
Description: "Healthcare professional code (THT) related to this exact profession/specialty"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Practitioner.qualification"
* . ^short = "Healthcare professional code (THT) related to this exact profession/specialty"
* . ^definition = "Tervishoiutöötaja kood (THT-kood), mis on konkreetse eriala/kutsega seotud."
* value[x] only string