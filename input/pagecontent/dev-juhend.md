Käesolev leht kirjeldab SPD FHIR API-ga liidestumise üldiseid reegleid: autoriseerimist, päiseid,
otsingu- ja muutmispäringute üldkonventsioone ning versioonihaldust. Konkreetsete ressursside
(Organization, Location, HealthcareService, Practitioner, PractitionerRole) päringute ja vastuste
täisnäited on toodud lehel [FHIR API kirjeldus](fhir-api.html).

### Autoriseerimine

SPD FHIR API on kaitstud OAuth2 kliendile suunatud teenusena TEHIK-u Charon autentimisteenuse kaudu.
Iga päring peab sisaldama kehtivat `Authorization: Bearer <token>` päist. Token peab kandma päritava
ressursi jaoks nõutud õigust (authority). Peamised õigused ressursside kaupa:

| Ressurss / operatsioon | Nõutud õigus(ed) |
|---|---|
| `GET /fhir/Organization*` | `ORGANIZATION_READ` |
| `GET /fhir/Practitioner*` (otsing, id-põhine) | `ORG_PRACTITIONER_READ`, `PRACTITIONER_READ` või `PUBLIC_PRACTITIONER_READ` (ajalugu ja id-põhine päring lubavad ka `PERSONAL_PRACTITIONER_READ`) |
| `PUT /fhir/Practitioner/{id}` | `ORG_PRACTITIONER_WRITE` või `PERSONAL_PRACTITIONER_WRITE` |
| `GET /fhir/PractitionerRole*` | `PRACTITIONER_ROLE_READ` |
| `GET /fhir/PractitionerRole/$lookup` | `ORG_PRACTITIONER_ROLE_LOOKUP` või `PRACTITIONER_ROLE_LOOKUP` |
| `PUT /fhir/PractitionerRole/{id}` | `ORG_PRACTITIONER_ROLE_WRITE` või `PERSONAL_PRACTITIONER_ROLE_WRITE` |
| `GET /fhir/HealthcareService*` | `HEALTHCARE_SERVICE_READ` |
| `GET /fhir/Location*` | `LOCATION_READ` |
| `GET /fhir/metadata`, `GET /fhir/OperationDefinition*` | avalik, õigust ei nõuta |

`ORG_*` õigustega kasutajal on ligipääs ainult oma asutuse andmetele ja `PERSONAL_*` õigustega
kasutajal ainult enda isikuandmetele — vt täpsemalt [Kontrollid ja terminoloogia](kontrollid.html).
Õiguse puudumisel või vale ulatuse korral tagastatakse viga `SPD-036` (ainult enda andmed) või
`SPD-037` (ainult oma asutuse andmed) — vt [Vead](vead.html).

### Päised

| Päis | Kirjeldus |
|---|---|
| `Authorization` | `Bearer <token>`, kohustuslik kõikidel päringutel. |
| `X-Road-Id` | Kohustuslik kõikidel andmeid muutvatel (`PUT`) päringutel. Puudumisel tagastatakse `SPD-047`. |

### Andmete pärimine

Kõik ressursid toetavad standardseid FHIR interaktsioone `read` (`GET [base]/[Resource]/[id]`),
`vread` (`GET [base]/[Resource]/[id]/_history/[versionId]`) ning `search` (`GET [base]/[Resource]?...`).
Ressursi kõigi versioonide nimekirja tagastavat ajaloopäringut (`GET [base]/[Resource]/[id]/_history`)
hetkel ei toetata.

Otsingul lubamatu või tundmatu parameeter tagastab vea `SPD-013`. Osa ressursse (nt PractitionerRole,
HealthcareService, Location) nõuavad, et otsingul oleks määratud vähemalt üks kindel
parameetritest — vastasel juhul tagastatakse `SPD-002` või `SPD-018`. Vt täpseid
otsinguparameetreid ressursside kaupa lehtedel [Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html),
[Teenuseosutaja isiku päring ja uuendamine](practitioner.html) ning
[Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html).

#### Lehitsemine (paging)

Otsingutulemuste hulka piiratakse parameetritega `_count` ja `_page`. Süsteemis on seadistatud
lehe suuruse ülempiir; selle ületamisel tagastatakse viga `SPD-048` või `SPD-055`, vigase
väärtuse korral `SPD-049`. Bundle'i `link` elemendid `next`/`previous` viitavad järgmisele/eelmisele
lehele.

### Andmete muutmine

Kirjutavad päringud (`PUT [base]/[Resource]/[id]`) on toetatud ressurssidel Practitioner ja
PractitionerRole. Üldised nõuded:

- Päring peab sisaldama `X-Road-Id` päist (`SPD-047`, kui puudub).
- Ressurss peab kandma õiget FHIR profiili (`SPD-010`/`SPD-011`, kui puudub või lubamatu).
- Muuta tohib ainult enda asutuse või enda isikuandmeid (`SPD-016`/`SPD-036`/`SPD-037`).
- Iga edukas muutmine tekitab ressursile uue versiooni; eelmine versioon säilib ajaloos (vt
  ajaloopäring ülal). Vana versioon märgitakse lõppenuks.
- Muudatused logitakse auditisse. Kui auditipäringu salvestamine enne muudatuse tegemist ebaõnnestub,
  siis päring **ebaõnnestub tervikuna** (fail-closed käitumine, `SPD-038`) — muudatust ilma
  jälgitavuseta ei tehta. Kui aga muudatuse **tulemuse** (outcome) audititesse logimine pärast
  muudatuse tegemist ebaõnnestub (`SPD-039`), siis see hetkel päringu õnnestumist ei mõjuta — viga
  ainult logitakse.

Ressursispetsiifilised muutmisreeglid (nt PractitionerRole erialade ja tegevuskohtade
valideerimine) on kirjeldatud lehtedel [Teenuseosutaja isiku päring ja uuendamine](practitioner.html)
ja [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html).

### Vead

Kõik veaolukorrad tagastatakse FHIR `OperationOutcome` ressursina koos SPD veakoodiga. Täielik
veakoodide kataloog on toodud lehel [Vead](vead.html).
