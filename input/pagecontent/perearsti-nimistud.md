Perearsti nimistute (registrite) päring ei ole FHIR ressurss, vaid kaks eraldiseisvat REST
otspunkti, mis loevad andmed reaalajas MEDRE-st (**ei sünkroniseerita** SPD andmebaasi). Vajalik
on õigus `PRACTITIONER_READ` — vt [Juhend arendajale](dev-juhend.html).

### Nimistu andmete pärimine koodi alusel

**URL**: `GET /general-practitioners/registers?registerCode=[N-kood]`

Loeb ühe nimistu andmed MEDRE X-tee teenusest `nim14andmed`. Tulemus puhverdatakse
(`register-details` vahemälu). Päring nõuab päist `X-Road-UserId`.

Kui vastuses sisaldub isikukood, **auditeeritakse väljastamine alati**
(`GENERAL_PRACTITIONER_REGISTER_DISCLOSURE`). Auditeerimine on fail-closed kahel viisil: kui
auditi salvestamine ebaõnnestub, päring ebaõnnestub tervikuna; kui perearsti ei õnnestu auditi
jaoks üheselt tuvastada, tagastatakse `SPD-050` ja vastust ei anta.

Veakoodid: `SPD-043` (vigane koodi formaat), `SPD-044` (nimistut ei leitud), `SPD-045` (nimistu
andmed on vigased), `SPD-038` (auditi salvestamine ebaõnnestus).

### Nimistute otsing teenuseosutaja koodi alusel

**URL**: `GET /general-practitioners/registers/search?practitionerRegCode=[TAM kood]` või
`?practitionerPersonalCode=[isikukood]`

Otsib kõik perearsti nimistud, mis kuuluvad määratud teenuseosutajale. Kasutab MEDRE X-tee teenust
`nim12nimekiri` nimistute loendi saamiseks, seejärel `nim14andmed` iga leitud nimistu andmete
pärimiseks (sama loogika mis üksikpäringul). Kui otsitakse isikukoodi alusel ja teenuseosutajat SPD-s
ei leita, käivitatakse taustal Practitioner-sünkroniseerimine (vt
[Teenuseosutaja isiku päring ja uuendamine](practitioner.html)). Tulemused puhverdatakse
(`register-list` ja `register-details` vahemälud). Päring nõuab päist `X-Road-UserId`.

Erinevalt üksikpäringust on avalikustamise auditeerimine siin **partii-põhine**: kui mõnda arsti ei
õnnestu auditi jaoks tuvastada, jäetakse see tulemustest lihtsalt välja (soft-fail), mitte ei
ebaõnnestu kogu päring.

Veakoodid: `SPD-018` (vähemalt üks parameeter nõutud), `SPD-041` (teenuseosutajat ei leitud),
`SPD-043`/`SPD-044`/`SPD-045`, `SPD-038` (auditi salvestamine ebaõnnestus).

Vt ka [Kasutuslood](kasutuslood.html) (UC-SPD-080, UC-SPD-081) ja [Vead](vead.html).
