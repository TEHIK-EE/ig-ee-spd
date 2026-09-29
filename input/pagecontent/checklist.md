Enne SPD-ga liidestumist veenduge, et Teie tarkvara vastab järgnevatele eeldustele.

- Tehnilised nõuded
  - <input type="checkbox"/> Teie asutusel on X-tee liikmelisus ja vajalik ligipääs SPD teenusele.
  - <input type="checkbox"/> Teie süsteemile on TEHIK-u Charon autentimisteenuses registreeritud OAuth2 klient
    koos vajalike õigustega (autoriseerimise kohta vt [Juhend arendajale](dev-juhend.html)).
  - <input type="checkbox"/> Teie süsteem oskab teha FHIR R5 `read`, `vread` ja `search` päringuid.
  - <input type="checkbox"/> Teie süsteem oskab (vajadusel) teha `PUT` päringuid koos kohustusliku
    `X-Road-Id` päisega.
  - <input type="checkbox"/> Teie süsteem oskab töödelda FHIR `OperationOutcome` veavastuseid ja
    tunneb SPD veakoodide kataloogi (vt [Vead](vead.html)).
  - <input type="checkbox"/> Teie süsteem toetab otsingutulemuste lehitsemist (`_count`, `_page`).
  - <input type="checkbox"/> Kui vajate perearsti nimistute andmeid, oskab Teie süsteem lisada
    päringule kohustusliku `X-Road-UserId` päise (vt
    [Perearsti nimistute päringud](perearsti-nimistud.html)) — see on eraldiseisev nõue FHIR
    päringute `X-Road-Id` päisest.
- Funktsionaalsed nõuded
  - <input type="checkbox"/> Teate, milliseid ressursse (Organization, Location, HealthcareService,
    Practitioner, PractitionerRole) ja milliste otsinguparameetritega vajate — vt
    [Asutuste, tegevuskohtade ja teenuste päring](asutused-ja-teenused.html),
    [Teenuseosutaja isiku päring ja uuendamine](practitioner.html) ja
    [Töötaja rolli päring, uuendamine ja genereerimine](practitioner-role.html).
  - <input type="checkbox"/> Kui vajate perearsti nimistute (registrite) andmeid, olete tutvunud
    lehel [Perearsti nimistute päringud](perearsti-nimistud.html) kirjeldatud eraldiseisvate
    REST otspunktidega (need ei ole FHIR ressursid).
  - <input type="checkbox"/> Kui vajate administratiivse töötaja rolli tekitamist, olete tutvunud
    `$lookup` operatsiooniga.
  - <input type="checkbox"/> Teate, et teenuseosutaja täisprofiili (isikukoodiga) väljastamine
    auditeeritakse ja nõuab vastavat ligipääsuõigust.
- Protsess
  - <input type="checkbox"/> Probleemi või küsimuse korral olete valmis looma GitHubi teate
    projektil [TEHIK-EE/ig-ee-spd](https://github.com/TEHIK-EE/ig-ee-spd) — vt [Kontaktid](contacts.html).
