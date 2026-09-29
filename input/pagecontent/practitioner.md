Käesolev leht kirjeldab Practitioner ressursi päringu ja muutmise ärireegleid. Päringu- ja
vastusenäited on toodud lehel [FHIR API kirjeldus](fhir-api.html).

### Päring

Otsing toimub `identifier` (isikukood süsteemiga `https://fhir.ee/sid/pid/est/ni` või TAM kood
süsteemiga `https://fhir.ee/sid/pro/est/pho`) või `_id` alusel. Kui isiku andmed puuduvad SPD-s,
tehakse taustal päring MEDRE-sse ja Tervishoiutöötajate registrisse (TÖR); kui teenuseosutajat ei
leita, tagastatakse `SPD-041`.

#### Kaks profiili — täielik ja avalik

Vastuse profiil sõltub kutsuja õigustest:

- Kui kutsujal on ainult avaliku profiili õigus (`PUBLIC_PRACTITIONER_READ`), tagastatakse
  **piiratud profiil** `ee-spd-practitioner-limited` — isikukoodi see **ei sisalda** ning
  väljastamist **ei auditeerita**.
- Kui kutsujal on täisõigus (`ORG_PRACTITIONER_READ`, `PRACTITIONER_READ` või
  `PERSONAL_PRACTITIONER_READ`), tagastatakse **täielik profiil** `ee-spd-practitioner` koos
  isikukoodiga. Täisprofiili väljastamine **auditeeritakse alati** (toiming
  `PRACTITIONER_DISCLOSURE`). Kui auditi salvestamine ebaõnnestub, siis päring ebaõnnestub
  tervikuna (fail-closed) — isikuandmeid ilma jälgitavuseta ei väljastata.

`ORG_PRACTITIONER_READ` õigusega kutsuja näeb ainult neid teenuseosutajaid, kellel on aktiivne
töösuhe kutsuja enda asutuses (vastasel juhul `SPD-037`); `PERSONAL_PRACTITIONER_READ` õigusega
kutsuja näeb ainult iseenda andmeid (vastasel juhul `SPD-036`).

### Uuendamine

`PUT [base]/fhir/Practitioner/[id]` muudab teenuseosutaja kontaktandmeid. Nõuded:

- `X-Road-Id` päis on kohustuslik (`SPD-047`, kui puudub).
- Ressurss peab kandma profiili `ee-spd-practitioner` (`SPD-010`/`SPD-011`).
- Kontaktis määratud aadress peab kuuluma muutja asutuse tegevuskohtade hulka (`SPD-015`, kui ei
  kuulu).
- Muutja asutus peab kattuma teenuseosutaja töösuhte asutusega, või muudatus peab olema tehtud
  iseenda andmete kohta (`ORG_PRACTITIONER_WRITE`/`PERSONAL_PRACTITIONER_WRITE`; vastasel juhul
  `SPD-016`/`SPD-036`/`SPD-037`).

Edukas muudatus tekitab Practitioner'ile uue versiooni; eelmine versioon säilib ajaloos lõppenuna.
Kui kontaktandmete muudatus mõjutab ka seotud PractitionerRole kontaktandmeid (ja neid ei ole seal
eraldi üle kirjutatud), tekitatakse **ka PractitionerRole'ile uus versioon** samaaegselt. Muudatus
auditeeritakse alati (`PRACTITIONER_CHANGE`, kaasneva PractitionerRole muudatuse korral lisaks
`PRACTITIONER_ROLE_CHANGE`) fail-closed põhimõttel — vt [Vead](vead.html) ja
[Juhend arendajale](dev-juhend.html).

Vt ka [Kasutuslood](kasutuslood.html) (UC-SPD-022, UC-SPD-023) ja
[Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html).
