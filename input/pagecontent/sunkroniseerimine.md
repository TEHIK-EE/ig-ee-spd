SPD hoiab enda andmebaasis koopiat mitmest välisregistrist ning uuendab seda nii taustapäringute
käigus (vt teiste ressursside juhendid) kui ka ajastatud tööde ja käsitsi käivitatavate
sünkroniseerimispäringutega. Sünkroniseerimise otspunktid on avalikud (autentimist ei nõuta,
kasutavad fikseeritud tehnilist X-tee kasutajat), sest neid kutsub üldjuhul ajastaja, mitte väline
klient.

| Otspunkt | Kirjeldus |
|---|---|
| `POST /sync/sync-organizations?code=` | Asutuste (Organization/License/Location/HealthcareService) täis- või sihitud sünkroniseerimine (UC-SPD-073). |
| `POST /sync/sync-practitioner` | Ühe teenuseosutaja sihitud sünkroniseerimine isikukoodi alusel (UC-SPD-074). |
| `POST /sync/sync-practitioners` | Teenuseosutajate täis- või kuupäevavahemikupõhine sünkroniseerimine (UC-SPD-074). |
| `POST /sync/sync-ads?adrId=` | Aadressiandmete täis- või sihitud sünkroniseerimine (UC-SPD-082). |
| `POST`/`GET /sync/refresh-suspension-snapshots` | Tegevuskohtade peatamisstaatuse hetktõmmiste värskendamine. |

Kõik sünkroniseerimistööd logivad kulgemise tabelisse `import_log`.

### Asutuse sünkroniseerimine (UC-SPD-073)

Loeb asutused, tegevusload, tegevuskohad ja teenused MEDRE-st (`TTO_18_TEENUSEPAKKUJAD`,
`TTO_16_KEHTIVUS`) ning Ravimikäitlejate andmekogust (`RAVIMIKAITLEJATE_MUUDATUSED`), liites need
kaks allikat. Sama tegevuskoha tuvastamiseks üle aadressimuutuste kasutatakse ADS
aadressi-eellase seost (`ads_address_ancestor`). Asutused, mis MEDRE-s enam aktiivsed ei ole,
deaktiveeritakse. Töö on samaaegsuslukustatud (üks käimasolev täissünk korraga); tehnilise vea
korral proovitakse täissünki uuesti. Kui sünkroniseerimine on juba käimas, tagastatakse vastav
tõrge (`SPD-056`, "sünkroniseerimine juba käimas"). Sama tõrget kasutavad ka teenuseosutaja ja
aadressiandmete sünkroniseerimine.

### Teenuseosutaja sünkroniseerimine (UC-SPD-074)

Loeb teenuseosutajad MEDRE-st (`TVI_01_KOODILOEND`, `TVI_02_DETAIL`, `REGISTRIISIK`) ning
töösuhte-/ametiandmed Tervishoiutöötajate registrist (TÖR, `GET /occupation`). Kui teenuseosutajat
MEDRE-s ei ole, kuid TÖR-is on, kasutatakse identiteedi tagavarana Patsientide üldandmete teenust
(MPI). Sünkroniseerimine käivitab vajadusel PractitionerRole automaatse genereerimise/versioonimise
(vt [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html)). Teenuseosutaja,
keda MEDRE enam ei tagasta, lõpetatakse SPD-s.

### Aadressiandmete (ADS) sünkroniseerimine (UC-SPD-082)

Öine töö, mis sünkroniseerib **kõik** tegevuskoha aadressid: uute `adr_id` väärtuste jaoks
täissünkroniseerimine (`GET /addresses`), juba teadaolevate jaoks deltasünkroniseerimine
(`GET /address-changes`, kontrollpunktipõhine `logId`). See täiendab, mitte ei asenda, asutuse
sünkroniseerimise käigus tehtavaid sihitud üksik-`adr_id` päringuid (UC-SPD-073). Veakoodid:
`SPD-051` (muudatusel puudub kasutatav `logId`), `SPD-052` (küsitud rohkem päevi kui muudatuste voog
väljastab).

### PractitionerRole aegunud oskuste eemaldamine (UC-SPD-083)

Öine, lukustatud (ShedLock) koristustöö, mis eemaldab aktiivsetelt PractitionerRole kirjetelt
aegunud erialad/ametid, mida teenuseosutaja sünkroniseerimine (UC-SPD-074) pole muul moel juba
värskendanud. Kui rollil ei jää alles ühtegi kehtivat eriala, lõpetatakse roll; vastasel juhul
luuakse uus versioon ainult kehtivate erialadega. Terve töö toimub ühes andmebaasitehingus, ilma
korduskatseta ja ilma `import_log` kirjeteta (ainult rakenduslogi).

### Tegevuskohtade peatamisstaatuse taasarvutamine

Öine, lukustatud (ShedLock) töö, mis arvutab kõikide kehtivate tegevuskohtade peatamisstaatuse
kuupäevapiiridel uuesti üle. See on eraldiseisev `POST`/`GET /sync/refresh-suspension-snapshots`
otspunktist, mis värskendab hetktõmmiseid päringu peale.

Vt ka [Kasutuslood](kasutuslood.html) (UC-SPD-073, UC-SPD-074, UC-SPD-082, UC-SPD-083).
