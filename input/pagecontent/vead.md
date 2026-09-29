SPD tagastab kõik vead FHIR `OperationOutcome` ressursina. Iga viga kannab SPD-spetsiifilist koodi
kujul `SPD-0NN`, mis on lisatud vastava `OperationOutcome.issue` elemendi diagnostikasse. HTTP
vastuse staatuskood tuletatakse veakoodi tüübist (nt puuduv ressurss → 404, valideerimisviga → 400,
sisemine viga → 500).

Näide vastusest, kui otsingul on kasutatud lubamatut parameetrit:

```json
{
    "resourceType": "OperationOutcome",
    "issue": [
        {
            "severity": "error",
            "code": "not-supported",
            "diagnostics": "SPD-013: Parameter foo is not allowed"
        }
    ]
}
```

### Veakoodide kataloog

| Kood | Tüüp | Sõnum |
|---|---|---|
| SPD-001 | exception | SPD sisemine serveriviga: ${message} |
| SPD-002 | required | Nõutud päringuparameeter puudub: ${param} |
| SPD-003 | not-found | Asutust ressursi id-ga ${organizationId} ei leitud |
| SPD-004 | exception | Päring Terviseametisse ebaõnnestus: ${errorCode} - ${errorText} |
| SPD-005 | exception | Aadressipäring Aadressiandmete süsteemi ebaõnnestus: ${errorCode} - ${errorText} |
| SPD-006 | not-found | Aadressi ${adrId} ei leitud Aadressiandmete süsteemist |
| SPD-007 | not-found | Teenuseosutajat ressursi id-ga ${practitionerId} ei leitud |
| SPD-008 | exception | Päring Tervishoiutöötajate registrisse ebaõnnestus: ${errorCode} - ${errorText} |
| SPD-009 | invalid | Teenuseosutajal identifikaatoriga ${identifier} puudub kehtiv töösuhe asutusega ${regCode} |
| SPD-010 | required | FHIR profiil puudub |
| SPD-011 | not-supported | FHIR profiil ${profile} ei ole lubatud ega toetatud |
| SPD-012 | not-found | Töötaja rolli ${roleId} ei leitud |
| SPD-013 | not-supported | Parameeter ${param} ei ole lubatud |
| SPD-014 | invalid | Töötaja asutusega seotud tegevuskohta ${locationId} ei leitud |
| SPD-015 | code-invalid | Kontaktis määratud aadressi ADR ID-d ${adrId} ei leitud asutuse tegevuskohtade hulgast |
| SPD-016 | invalid | Muuta tohib ainult oma asutuse töötajate andmeid |
| SPD-017 | not-found | Määratud tervishoiuteenust ei leitud |
| SPD-018 | required | Vähemalt üks päringuparameetritest ${param} on nõutud |
| SPD-019 | invalid | Töötaja rolliga seotud asutusel ${param} peab olema kehtiv tervishoiuteenuse osutamise või apteegiteenuse tegevusluba, või seadusest tulenev õigus kasutada tervise infosüsteemi |
| SPD-020 | exception | Päring terminoloogiaserverisse ebaõnnestus: ${errorCode} - ${errorText} |
| SPD-021 | not-found | Tegevuskohta ADR ID-ga ${adrId} ei leitud |
| SPD-022 | required | Töötaja roll peab olema seotud vähemalt ühe erialaga |
| SPD-023 | invalid | Teenuseosutajal ei ole eriala koodiga ${specialtyCode} |
| SPD-024 | exception | Päring Ravimikäitlejate andmekogusse ebaõnnestus: ${errorCode} - ${errorText} |
| SPD-025 | invalid | Päringuparameeter ${param} lubab ainult ühte väärtust |
| SPD-026 | invalid | Mitteaktiivset töötaja rolli ei ole lubatud muuta |
| SPD-027 | exception | Viga kliendipäringu '${client}' täitmisel |
| SPD-028 | invalid | ${resourceName} id valideerimise viga: ${message} |
| SPD-029 | not-found | ${resourceName} id-d ei leitud |
| SPD-030 | invalid | Ravimikäitlejate andmekogu litsentsikoodi ei õnnestunud FHIR koodiks teisendada: ${licenseCode} |
| SPD-031 | required | Otsingukriteeriumi ei ole määratud |
| SPD-032 | invalid | Tundmatu väärtus parameetril '${param}', lubatud väärtused: ${allowed} |
| SPD-033 | invalid | Vigane viide: ${reference}. Peaks sisaldama ${missingPart} |
| SPD-034 | invalid | Leiti mitu identifikaatorit: ${identifier}. Määrake üks identifikaatori süsteem ja üks väärtus |
| SPD-035 | not-found | Ressurssi id-ga '${id}' ei leitud |
| SPD-036 | invalid | Operatsioon on lubatud ainult autentitud kasutaja enda andmetel |
| SPD-037 | invalid | Operatsioon on lubatud ainult autentitud asutuse andmetel |
| SPD-038 | exception | Viga auditilogi salvestamisel |
| SPD-039 | exception | Viga auditi tulemuse salvestamisel |
| SPD-040 | not-found | Asutust koodiga ${code} ei leitud |
| SPD-041 | not-found | Teenuseosutajat identifikaatoriga ${identifier} ei leitud |
| SPD-042 | code-invalid | Tundmatu otsinguparameetri ${paramName} väärtus |
| SPD-043 | invalid | Perearsti nimistu kood ${registerCode} on vales formaadis |
| SPD-044 | not-found | Määratud koodiga perearsti nimistut ei ole olemas |
| SPD-045 | invalid | Perearsti nimistu andmed on vigased |
| SPD-046 | required | Parameetri ${paramName} pikkus peab olema vähemalt ${paramLength} märki |
| SPD-047 | required | Nõutud päis X-Road-Id puudub |
| SPD-048 | invalid | Parameeter ${paramName} ei tohi ületada seadistatud piirmäära ${paramLimit} |
| SPD-049 | invalid | Vigane parameeter ${paramName}: ${message} |
| SPD-050 | exception | Nimistu ${registerCode} perearsti ei õnnestunud avalikustamise auditi jaoks tuvastada |
| SPD-051 | exception | Aadressiandmete süsteemi aadressimuudatusel puudub kasutatav logId |
| SPD-052 | exception | Aadressimuudatuste voogu küsiti ${days} päeva kohta, kuid see väljastab kuni ${maxDays}; viimane sünkroniseerimine toimus ${lastSyncedOn}. Vahepeal muutunud aadressid on taastatavad ainult sihitud taassünkroniseerimisega |
| SPD-053 | exception | Identifikaatoriga ${identifier} on registreeritud rohkem kui üks teenuseosutaja: ressursi id-d ${practitionerIds} |
| SPD-054 | conflict | Tervishoiutöötaja kood ${registerCode} on juba registreeritud teenuseosutajale ${practitionerId} |
| SPD-055 | invalid | Parameeter ${paramName} ei tohi küsida rohkem kirjeid kui lubatud piirmäär ${paramLimit} |
| SPD-056 | conflict | ${type} sünkroniseerimine on juba käimas |
| SPD-057 | exception | Terviseameti teenus tvi01koodiloend ei tagastanud tulemust perioodi ${from} - ${to} kohta |
| SPD-058 | exception | Litsentsi ${licenseCode} peatamiste täielikku hetktõmmist ei õnnestunud asendada: salvestati ${persisted} oodatud ${expected} tegevuskohast |
| SPD-059 | exception | Litsentsi ${licenseCode} peatamiste täielikku hetktõmmist ei õnnestunud asendada: salvestati ${persisted} oodatud ${expected} tervishoiuteenuse tegevuskohast |
| SPD-060 | exception | Asutuse ${organizationCode} täielikku autoriteetset tegevusloa hetktõmmist ei õnnestunud salvestada: oodati=${expected}, salvestati=${saved} |

Vt ka [Kontrollid ja terminoloogia](kontrollid.html) valideerimisreeglite konteksti kohta ja
[Juhend arendajale](dev-juhend.html) üldiste päringu- ja muutmisreeglite kohta.
