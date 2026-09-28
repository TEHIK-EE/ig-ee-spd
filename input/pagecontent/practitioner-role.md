Käesolev leht kirjeldab PractitionerRole ressursi päringu, muutmise, automaatse genereerimise ja
`$lookup` operatsiooni ärireegleid. Päringu- ja vastusenäited on toodud lehel
[FHIR API kirjeldus](fhir-api.html).

### Päring

Otsing nõuab kohustuslikult kas `_id` või `identifier` parameetrit — ilma nendeta tagastatakse
`SPD-002`. Toetatud otsinguparameetrid:

- `identifier`: isiku identifikaator (isikukood süsteem `https://fhir.ee/sid/pid/est/ni` või TAM
  kood süsteem `https://fhir.ee/sid/pro/est/pho`).
- `organization.identifier`: asutuse äriregistrikood, süsteem `https://fhir.ee/sid/org/est/br`.
- `specialty`: eriala või ameti kood, süsteem kas `https://fhir.ee/CodeSystem/erialad` või
  `https://fhir.ee/CodeSystem/ametite-klassifikaator` — muu süsteem või tundmatu kood tagastab
  `SPD-042`.
- `role`: administratiivse rolli kood.
- `active`: ainus toetatud väärtus on `true`; muu väärtus tagastab `SPD-032`.

Muu/tundmatu parameeter tagastab `SPD-013`. Kui teenuseosutajat või asutust SPD-s (veel) pole,
käivitatakse taustal vastavalt Practitioner- või Organization-sünkroniseerimine (vt
[Teenuseosutaja isiku päring ja uuendamine](practitioner.html) ja
[Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html)).

Rolli `active` väärtus arvutatakse värskelt ümber iga tavapärase (mitte `vread`) päringu käigus;
`vread` tagastab alati vastava versiooni ajastu väärtuse.

### Uuendamine

`PUT [base]/fhir/PractitionerRole/[id]` muudab kontaktandmeid, erialasid ja tegevuskohti. Nõuded:

- `X-Road-Id` päis on kohustuslik (`SPD-047`).
- Roll peab olema seotud vähemalt ühe erialaga, välja arvatud administratiivsete rollide korral või
  kui teenuseosutajal ei ole ühtegi eriala (`SPD-022`, kui rikutud).
- Ametikoode (amet) tohib rollil olla korraga ainult üks; seda ei tohi eemaldada.
- Tegevuskoht/aadress peab kuuluma muutja asutuse tegevuskohtade hulka: rolli tegevuskoha viide
  kontrollitakse koodiga `SPD-014`, kontakti aadress (ADR ID) koodiga `SPD-015`.
- Muutja asutus peab kattuma rolli asutusega, või muudatus tehakse iseenda andmete kohta
  (`SPD-016`/`SPD-036`/`SPD-037`).
- Mitteaktiivset rolli ei ole lubatud muuta (`SPD-026`).

Iga kontakti/eriala/tegevuskoha kirje versioneeritakse eraldi (väli-põhine muudatuste jälgimine).
Muudatus auditeeritakse alati (`PRACTITIONER_ROLE_CHANGE`) fail-closed põhimõttel.

### Automaatne genereerimine ja versioonimine

PractitionerRole ei ole ainult käsitsi muudetav ressurss — süsteem genereerib ja versioneerib seda
**automaatselt** iga kord, kui teenuseosutaja aluandmed muutuvad (uus amet/TAM kood, eriala
lisandumine/eemaldumine/aegumine, töösuhte lisandumine/eemaldumine/aegumine, TÖR-põhine ameti
muutus) — vt [Taustsünkroniseerimine välisregistritega](sunkroniseerimine.html). Sealjuures
**säilitatakse alati asutuse/töötaja poolt käsitsi sisestatud andmed** (kontaktid, tegevuskoha
viited) — automaatgeneerimine ei kirjuta neid kunagi üle, isegi kui luuakse uus versioon.

### $lookup operatsioon

`$lookup` (`GET`/`POST [base]/fhir/PractitionerRole/$lookup`) leiab või tekitab administratiivse
töötaja PractitionerRole'i. Kõik kolm sisendparameetrit on kohustuslikud (`SPD-002`, kui mõni
puudub):

- `identifier`: isiku identifikaator kujul `system|code`.
- `organization.identifier`: asutuse äriregistrikood kujul `system|code`, süsteem
  `https://fhir.ee/sid/org/est/br`.
- `role`: administratiivse rolli nimi (nt `receptionist`). Väärtus peab kuuluma lubatud
  administratiivsete rollide loendisse — vastasel juhul `SPD-032`, mis loetleb ka lubatud väärtused.

Operatsioon kontrollib, et asutusel on kehtiv TTO/apteegi tegevusluba (või SPD kasutamiseks
seadusest tulenev õigus), tuvastab töösuhte TÖR-i kaudu ning kasutab MPI-d isiku nime tagavaraks,
kui MEDRE-s andmeid ei ole. Enne vastamist arvutatakse rolli `active` staatus värskelt ümber.
Ligipääsuks on vaja õigust `PRACTITIONER_ROLE_LOOKUP` (suvaline asutus) või
`ORG_PRACTITIONER_ROLE_LOOKUP` (ainult kutsuja enda asutus — vastasel juhul `SPD-037`).

Vt ka [Kasutuslood](kasutuslood.html) (UC-SPD-024, UC-SPD-025, UC-SPD-029, UC-SPD-041) ja
[Vead](vead.html).
