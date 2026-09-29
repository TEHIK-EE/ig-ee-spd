Käesolev leht loetleb SPD teenuse aluseks olevad kasutuslood (UPTIS Jira kasutuslood UC-SPD-*) ning
viitab juhendi leheküljele, mis vastavat teemat käsitleb.

| Kasutuslugu | Pealkiri | Kirjeldus | Juhend |
|---|---|---|---|
| UC-SPD-021 | SPD Asutuse (Organization) päring | Asutuse lugemine/otsing id, identifikaatori või nime alusel; puudumisel taustsünkroniseerimine MEDRE-st ja Ravimikäitlejate andmekogust | [Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html) |
| UC-SPD-022 | Teenuseosutaja isiku (Practitioner) päring | Practitioner'i lugemine/otsing identifikaatori alusel, avaliku ja täieliku profiili eristus, avalikustamise audit | [Teenuseosutaja isiku päring ja uuendamine](practitioner.html) |
| UC-SPD-023 | Teenuseosutaja isiku (Practitioner) uuendamine | Practitioner'i kontaktandmete muutmine, PractitionerRole andmete kaskaad-uuenemine | [Teenuseosutaja isiku päring ja uuendamine](practitioner.html) |
| UC-SPD-024 | Töötaja rolli (PractitionerRole) päring | PractitionerRole lugemine/otsing identifikaatori, asutuse, eriala, rolli ja aktiivsuse alusel | [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html) |
| UC-SPD-025 | Töötaja rolli (PractitionerRole) uuendamine | Kontaktandmete, erialade ja tegevuskohtade muutmine koos ärireeglitega | [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html) |
| UC-SPD-026 | Tegevuskoha (Location) otsing | Location'i lugemine/otsing asutuse, tegevusloa liigi, rolli ja aadressikoodi alusel | [Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html) |
| UC-SPD-027 | TTO poolt osutatava meditsiiniteenuse (HealthcareService) päring | HealthcareService lugemine/otsing teenuseliigi, asutuse, tegevusloa ja tegevuskoha alusel | [Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html) |
| UC-SPD-029 | Töötaja rolli tekitamine ja muutmine (süsteemne) | PractitionerRole automaatne genereerimine/versioonimine MEDRE/TÖR sünkroniseerimise järel | [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html) |
| UC-SPD-041 | Töötaja rolli genereerimine administratiivsele töötajale | `$lookup` operatsioon administratiivse rolli PractitionerRole leidmiseks/tekitamiseks | [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html) |
| UC-SPD-073 | Asutuse (Organization) sünkroniseerimine | Organization/License/Location/HealthcareService sünkroniseerimine MEDRE-st ja Ravimikäitlejate andmekogust | [Taustsünkroniseerimine välisregistritega](sunkroniseerimine.html) |
| UC-SPD-074 | Teenuseosutaja (Practitioner) sünkroniseerimine | Practitioner sünkroniseerimine MEDRE-st ja TÖR-ist | [Taustsünkroniseerimine välisregistritega](sunkroniseerimine.html) |
| UC-SPD-075 | SPD ressursi versioonimuutuste ajaloo päring | `_history` ja `vread` semantika kõigi SPD ressursside jaoks | [FHIR API kirjeldus](fhir-api.html) |
| UC-SPD-080 | Perearsti nimistu andmete pärimine koodi alusel | Nimistu andmete pärimine nimistu koodi alusel MEDRE-st | [Perearsti nimistute päringud](perearsti-nimistud.html) |
| UC-SPD-081 | Perearsti nimistute otsing Practitioner koodi alusel | Kõigi teenuseosutajale kuuluvate nimistute otsing | [Perearsti nimistute päringud](perearsti-nimistud.html) |
| UC-SPD-082 | Aadressiandmete (ADS) sünkroniseerimine | Location aadresside täis- ja deltasünkroniseerimine Aadressiandmete süsteemist | [Taustsünkroniseerimine välisregistritega](sunkroniseerimine.html) |
| UC-SPD-083 | PractitionerRole aegunud oskuste eemaldamine | Öine koristustöö, mis eemaldab aegunud erialad/ametid ja lõpetab tühjaks jäänud rollid | [Taustsünkroniseerimine välisregistritega](sunkroniseerimine.html) |

Kasutuslugude täistekstid on saadaval TEHIK-u sisemises Jira/Confluence keskkonnas.
