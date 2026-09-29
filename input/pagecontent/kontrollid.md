### Üldised otsingu valideerimisreeglid

| Reegel | Kehtib | Viga |
|---|---|---|
| Tundmatu või lubamatu otsinguparameeter | kõik ressursid | `SPD-013` |
| Nõutud parameeter puudub | PractitionerRole (`_id` või `identifier`), Location/HealthcareService (vähemalt üks põhifilter) | `SPD-002` / `SPD-018` |
| Parameeter lubab ainult ühte väärtust | nt Organization `_id` | `SPD-025` |
| Identifikaatori süsteem peab olema teadaolev/toetatud | Organization, Practitioner, PractitionerRole `identifier` | `SPD-042` |
| `organization.identifier` süsteem peab olema `https://fhir.ee/sid/org/est/br` ja väärtus numbriline | PractitionerRole, Location, HealthcareService | `SPD-028` / `SPD-042` |
| `active` parameetri ainus lubatud väärtus on `true` | PractitionerRole, HealthcareService | `SPD-032` |
| Mitu identifikaatorit määratud, kuigi oodatakse ühte | Practitioner, PractitionerRole | `SPD-034` |
| Lehe suurus (`_count`/`_page`) ületab piirmäära | kõik otsingud | `SPD-048` / `SPD-055` |

### Muutmisreeglid (PUT)

| Reegel | Kehtib | Viga |
|---|---|---|
| `X-Road-Id` päis kohustuslik | Practitioner, PractitionerRole | `SPD-047` |
| Ressurss peab kandma õiget FHIR profiili | Practitioner, PractitionerRole | `SPD-010` / `SPD-011` |
| Kontakti aadress peab kuuluma muutja asutuse tegevuskohtade hulka | Practitioner, PractitionerRole | `SPD-014` / `SPD-015` |
| Roll peab olema seotud vähemalt ühe erialaga (v.a administratiivsed rollid) | PractitionerRole | `SPD-022` |
| Muuta tohib ainult oma asutuse/enda andmeid | Practitioner, PractitionerRole | `SPD-016` / `SPD-036` / `SPD-037` |
| Mitteaktiivset rolli ei tohi muuta | PractitionerRole | `SPD-026` |

Täielik veakoodide loend on toodud lehel [Vead](vead.html).

### Kasutatav terminoloogia

SPD kasutab tsentraalses terminoloogiaserveris hallatavaid koodisüsteeme:

- [`https://fhir.ee/CodeSystem/erialad`](https://fhir.ee/CodeSystem/erialad) — teenuseosutaja
  meditsiinilised erialad (kasutusel PractitionerRole `specialty` otsinguparameetril).
- [`https://fhir.ee/CodeSystem/ametite-klassifikaator`](https://fhir.ee/CodeSystem/ametite-klassifikaator) —
  teenuseosutaja ametid (kasutusel PractitionerRole `specialty` otsinguparameetril).
- `medre-tegevusloa-liik` — MEDRE tegevusloa liik, kasutusel Organization/Location tegevusloa
  andmete kajastamisel.
- `ravimiameti-apteegiteenuse-tegevusloa-liigi-tapsustus` — Ravimikäitlejate andmekogu apteegiteenuse
  tegevusloa täpsustus.
- `medre-tegevusalaga-seotud-teenus` — HealthcareService `service-type` väärtuste allikas.

Vt ka [FHIR API kirjeldus](fhir-api.html) lehel toodud päringu- ja vastusenäiteid ning
[Juhend arendajale](dev-juhend.html) üldiste päringureeglite kohta.
