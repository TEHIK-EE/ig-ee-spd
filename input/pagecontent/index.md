># NB! 
>
>**See on arendusversioon ning seda tuleb käsitleda kui pooleliolevat tööd ("work in progress"). Sisu muutub igapäevaselt ja tegu ei ole veel ametliku toote väljalaskega.**
>
>**Juhendit täiendatakse igapäevaselt. Kõik liidestumiseks vajalik materjal pole veel juhendisse lisatud, tegu on MUSTANDIGA!**
>

Käesolev juurutusjuhend kirjeldab teenuseosutajate registrit (Service Provider Directory, SPD). 
SPD pakub FHIR-liidest tervishoiu asutuste (Organization), nende tegevuskohtade (Location) ja pakutavate
teenuste (HealthcareService) ning tervishoiutöötajate ja nende töösuhete (Practitioner, PractitionerRole)
andmete pärimiseks.
p
SPD hoiab enda andmebaasis koopiat mitmest riiklikust allikregistrist — Tervishoiuteenuste
korraldamise infosüsteemi registrist (MEDRE), Tervishoiutöötajate registrist (TÖR), Ravimikäitlejate
andmekogust ja Aadressiandmete süsteemist (ADS) — ning uuendab seda andmetarbija päringu käigus
vajaduspõhiselt, samuti ajastatud taustatöödega.


### Sissejuhatus

SPD on tervishoiutöötaja ja asutuse andmete teenus, mida kasutavad teised infosüsteemid (nt Terviseinfosüsteem)
teenuseosutajate ja -asutuste andmete pärimiseks ning teenuseosutajate tööalaste rollide ja
volituste kontrollimiseks. Ressursside ja päringute täpne kirjeldus on toodud lehel
[FHIR API kirjeldus](fhir-api.html), ärireeglid ja taustsünkroniseerimise loogika juhendite
sektsioonis (vt menüü "Juhendid").


### Arendusvahendid ja lähtekood

SPD juurutusjuhendi lähtekood on leitav [GitHubis](https://github.com/TEHIK-EE/ig-ee-spd).
Antud sait on välja töötatud [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand) abiga.