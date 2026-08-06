Profile: EESPDOperationDefinition
Parent: OperationDefinition
Id: ee-spd-operation-definition
Title: "EE SPD OperationDefinition"
Description: "Kirjeldab SPD poolt toetatud custom operatsiooni (nt PractitionerRole `$lookup`). Describes a custom operation supported by SPD, used for FHIR API discovery."
//* ^version = "1.0.0"
* ^status = #draft
* ^date = "2026-08-06T00:00:00+00:00"
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* url 1..1
* url ^short = "Canonical identifier of this operation definition."
* version 1..1
* name 1..1
* title 1..1
* status 1..1
* kind = #operation
* kind ^short = "SPD kirjeldab ainult operatsioone (operation), mitte päringuid (query)."
* experimental 0..1
* date 1..1
* publisher 1..1
* contact 1..*
* useContext 0..0
* purpose 0..1
* description 1..1
* description ^short = "Operatsiooni kirjeldus."
* affectsState 0..1
* code 1..1
* code ^short = "Operatsiooni kood, mille alusel operatsiooni käivitatakse (nt `$lookup` korral 'lookup')."
* comment 0..1
* base 0..0
* resource 1..*
* resource ^short = "Ressursi tüüp(id), millele operatsioon rakendub, nt PractitionerRole."
* system 1..1
* type 1..1
* instance 1..1
* inputProfile 0..0
* outputProfile 0..0
* parameter 1..*
* parameter ^short = "Operatsiooni sisend- ja väljundparameetrid."
* parameter.id 0..0
* parameter.extension 0..0
* parameter.modifierExtension 0..0
* parameter.name 1..1
* parameter.use 1..1
* parameter.scope 0..0
* parameter.min 1..1
* parameter.max 1..1
* parameter.documentation 1..1
* parameter.documentation ^short = "Parameetri kirjeldus. (ee Parameetri kirjeldus.)"
* parameter.type 1..1
* parameter.allowedType 0..0
* parameter.targetProfile 0..0
* parameter.searchType 0..0
* parameter.binding 0..0
* parameter.referencedFrom 0..0
* parameter.part 0..0
* overload 0..0
