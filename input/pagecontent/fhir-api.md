## API kirjeldus

Käesolevas juhendis kirjeldatakse SPD teenuse poolt toetatud FHIR otspunktid ja operatsioonid.
Toodud näidispäringud ja näidisvastused ei kajasta reaalseid andmeid aga vastavad oodatud/toetatud ressursi struktuurile.

### Toetatud ressursid ja operatsioonid

| Ressurss | read | vread | search | update | operatsioonid |
|---|:--:|:--:|:--:|:--:|---|
| PractitionerRole | ✓ | ✓ | ✓ | ✓ | `$lookup` |
| Practitioner | ✓ | ✓ | ✓ | ✓ | – |
| Organization | ✓ | ✓ | ✓ | – | – |
| Location | ✓ | ✓ | ✓ | – | – |
| HealthcareService | ✓ | ✓ | ✓ | – | – |

---

### PractitionerRole ehk töötaja rolli pärimine

Süsteem võtab vastu töötaja rolli päringu ja tagastab isiku ja töösuhte andmed koos kontaktandmetega.
Kui isiku andmed puuduvad SPD-s, siis tehakse taustas päringud MEDRE-sse ja TÖR-i.

#### Päring id alusel

**URL**: `GET [base]/fhir/PractitionerRole/[id]`

- id: ressursi SPD süsteemne numbriline id.

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "123",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/12345"
    },
    "organization": {
        "reference": "Organization/678"
    }
}
```

#### Otsing

PractitionerRole otsing nõuab vähemalt parameetrit `identifier` või `_id`. Toetatud on järgmised
otsinguparameetrid:

- `identifier`: isiku identifikaator kujul `system|value`. Toetatud süsteemid:
    - `https://fhir.ee/sid/pid/est/ni` (isikukood)
    - `https://fhir.ee/sid/pro/est/pho` (arsti TAM kood, nt. D00001)
- `organization`: asutuse viide kujul `Organization/[id]`, kus `[id]` on asutuse SPD süsteemne numbriline id.
- `specialty`: eriala/ameti kood kujul `system|code`. Toetatud süsteemid:
    - `https://fhir.ee/CodeSystem/erialad` (eriala)
    - `https://fhir.ee/CodeSystem/ametite-klassifikaator` (amet)
- `role`: rolli kood.
- `active`: tõeväärtus (`true`/`false`).
- `_id`: ressursi SPD süsteemne numbriline id.

##### Näide: päring isikukoodi alusel

**URL**: `GET [base]/fhir/PractitionerRole?identifier=https://fhir.ee/sid/pid/est/ni%7C[isikukood]&organization=Organization/[id]`

##### Näide: päring arsti TAM koodi alusel

**URL**: `GET [base]/fhir/PractitionerRole?identifier=https://fhir.ee/sid/pro/est/pho%7C[practitionerCode]`

#### Vastus

- **HTTP status**: 200 OK
- **Vastuse tüüp**: Bundle (searchset), mis sisaldab PractitionerRole ressursse.

```
HTTP/1.1 200 OK

{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1,
  "entry": [
    {
      "fullUrl": "https://fhir.ee/fhir/PractitionerRole/123",
      "resource": {
        "resourceType": "PractitionerRole",
        "id": "123",
        "meta": {
          "versionId": "1",
          "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"
          ]
        },
        "practitioner": {
          "reference": "Practitioner/12345"
        },
        "organization": {
          "reference": "Organization/678"
        }
      }
    }
  ]
}
```

#### $lookup operatsioon

`$lookup` on tüübitasandi FHIR operatsioon, mis leiab töötaja rolli ning loob selle puudumisel. 
Operatsioon võtab sisendiks `Parameters` ressursi ja tagastab ühe PractitionerRole ressursi.

**URL**: `POST [base]/fhir/PractitionerRole/$lookup`

Sisendparameetrid (kõik on kohustuslikud):

- `identifier` (string, 1..1): isiku identifikaator (isikukood või TAM kood).
- `organization` (Reference, 1..1): asutuse viide kujul `Organization/[id]`.
- `role` (string, 1..1): rolli kood. Peab kuuluma väärtuste hulka
  `autoriseerimismooduli-kasutajarollid`.

```
POST [base]/fhir/PractitionerRole/$lookup
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [
    { "name": "identifier", "valueString": "11111111111" },
    { "name": "organization", "valueString": "Organization/678" },
    { "name": "role", "valueString": "ADMIN" }
  ]
}
```

#### Vastus

- **HTTP status**: 200 OK
- **Vastuse tüüp**: üks PractitionerRole ressurss (mitte Bundle). Kui rolli ei leita ega looda, tagastatakse tühi vastus.

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "123",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/12345"
    },
    "organization": {
        "reference": "Organization/678"
    }
}
```

#### Ajaloo päring

**URL**: `GET [base]/fhir/PractitionerRole/[id]/_history/[version]`

- id: ressursi SPD süsteemne numbriline id
- version: ressursi versioon

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "123",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/12345"
    },
    "organization": {
        "reference": "Organization/678"
    }
}
```

---

### Practitioner ehk teenusosutaja isiku päring

Võtab vastu teenuseosutaja isiku päringu ja tagastab isiku andmed koos eriala ja/või ameti andmetega.
Kui isiku andmed puuduvad SPD-s, siis tehakse taustas päringud MEDRE-sse ja TÖR-i.

Olenevalt päringu õigustest võidakse tagastada kas täielik või piiratud profiil:
`https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner` või
`https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-limited`.

#### Päring id alusel

**URL**: `GET [base]/fhir/Practitioner/[id]`

- [id]: ressursi SPD süsteemne id. Isikukood ja TAM koodid on leitavad ressursi `identifier` väljalt.

#### Otsing

**URL**: `GET [base]/fhir/Practitioner?identifier=[system]%7C[value]`

- `identifier`: isiku identifikaator kujul `system|value`. Toetatud süsteemid:
    - `https://fhir.ee/sid/pid/est/ni` (isikukood)
    - `https://fhir.ee/sid/pro/est/pho` (TAM kood)
- `_id`: ressursi SPD süsteemne numbriline id (lisaks `identifier`-le).

#### Ajaloo päring

On võimalik pärida varasemat versiooni ressursist kasutades ajaloo päringut.

- id: ressursi SPD süsteemne id
- version: ressursi versioon

**URL**: `GET [base]/fhir/Practitioner/[id]/_history/[version]`

#### Vastus


```
HTTP/1.1 200 OK

{
    "resourceType": "Practitioner",
    "id": "12345",
    "meta": {
        "versionId": "34",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner"
        ]
    },
    "identifier": [
        {
            "system": "https://fhir.ee/sid/pid/est/ni",
            "value": "37907242744"
        },
        {
            "system": "https://fhir.ee/sid/pro/est/pho",
            "value": "D09869"
        },
        {
            "system": "https://fhir.ee/sid/pro/est/pho",
            "value": "N15979"
        },
        {
            "system": "https://fhir.ee/sid/pro/est/pho",
            "value": "P01686"
        }
    ],
    "name": [
        {
            "family": "6d765688Pnimi",
            "given": [
                "6d765688Enimi"
            ]
        }
    ],
    "qualification": [
        {
            "code": {
                "coding": [
                    {
                        "system": "urn:oppeoigus",
                        "code": "S210"
                    }
                ]
            }
        },
        {
            "code": {
                "coding": [
                    {
                        "system": "urn:kutse",
                        "code": "K11"
                    }
                ]
            }
        },
        {
            "code": {
                "coding": [
                    {
                        "system": "urn:kutse",
                        "code": "K15"
                    }
                ]
            }
        },
        {
            "code": {
                "coding": [
                    {
                        "system": "urn:kutse",
                        "code": "K19"
                    }
                ]
            }
        }
    ]
}
```

---

### Organization ehk asutuse päring

Süsteem võtab vastu asutuse päringu ja tagastab päringu vastuses asutuse ja tegevuslubade andmed.
Kui asutuse andmed puuduvad SPD-s, siis tehakse taustas asutuse päring MEDRE-sse ja Ravimikäitlejate andmekogusse.

#### Päring id alusel

**URL**: `GET [base]/fhir/Organization/[id]`

- [id]: ressursi SPD süsteemne id. Asutuse kood on leitav ressursi `identifier` väljalt.

#### Otsing

Otsing nõuab vähemalt ühte parameetrit. Toetatud parameetrid:

- `identifier`: asutuse identifikaator kujul `system|value`, nt. äriregistri kood
  `https://fhir.ee/sid/org/est/br%7C90006399`.
- `name`: asutuse nimi (osaline, tõstutundetu otsing).

**URL**: `GET [base]/fhir/Organization?identifier=https://fhir.ee/sid/org/est/br%7C[code]`

#### Ajaloo päring

- id: ressursi SPD süsteemne id
- version: ressursi versioon

**URL**: `GET [base]/fhir/Organization/[id]/_history/[version]`

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "Organization",
    "id": "10195",
    "meta": {
        "versionId": "9",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-organization"
        ]
    },
    "identifier": [
        {
            "system": "https://fhir.ee/sid/org/est/br",
            "value": "90006590"
        }
    ],
    "active": true,
    "type": [
        {
            "coding": [
                {
                    "system": "https://fhir.ee/CodeSystem/organisatsiooni-tyyp",
                    "code": "prov"
                }
            ],
            "text": "Piirkondlik haigla"
        }
    ],
    "name": "Sihtasutus Tallinna Lastehaigla",
    "contact": [
        {
            "telecom": [
                {
                    "system": "phone",
                    "value": "+372 6977111",
                    "use": "work"
                },
                {
                    "system": "email",
                    "value": "lastehaigla@lastehaigla.ee",
                    "use": "work"
                }
            ]
        }
    ],
    "qualification": [
        {
            "identifier": [
                {
                    "system": "https://fhir.ee/sid/org/est/fi",
                    "value": "L02058"
                }
            ],
            "code": {
                "coding": [
                    {
                        "system": "https://fhir.ee/CodeSystem/medre-tegevusloa-liik",
                        "code": "1",
                        "display": "Eriarstiabi teenus"
                    }
                ]
            },
            "period": {
                "start": "2009-11-24T00:00:00+00:00"
            }
        },
        {
            "identifier": [
                {
                    "system": "https://fhir.ee/sid/org/est/fi",
                    "value": "L02588"
                }
            ],
            "code": {
                "coding": [
                    {
                        "system": "https://fhir.ee/CodeSystem/medre-tegevusloa-liik",
                        "code": "3",
                        "display": "Kiirabi teenus"
                    }
                ]
            },
            "period": {
                "start": "2011-12-19T00:00:00+00:00"
            }
        },
        {
            "identifier": [
                {
                    "system": "https://fhir.ee/sid/org/est/fi",
                    "value": "L02825"
                }
            ],
            "code": {
                "coding": [
                    {
                        "system": "https://fhir.ee/CodeSystem/medre-tegevusloa-liik",
                        "code": "1",
                        "display": "Eriarstiabi teenus"
                    }
                ]
            },
            "period": {
                "start": "2012-11-13T00:00:00+00:00"
            }
        },
        {
            "identifier": [
                {
                    "system": "https://fhir.ee/sid/org/est/fi",
                    "value": "L05225"
                }
            ],
            "code": {
                "coding": [
                    {
                        "system": "https://fhir.ee/CodeSystem/medre-tegevusloa-liik",
                        "code": "2",
                        "display": "Iseseisva õendusabi osutamine"
                    }
                ]
            },
            "period": {
                "start": "2021-03-24T00:00:00+00:00"
            }
        }
    ]
}
```

---

### Location ehk asukoha päring

Tagastab tegevuskoha (asukoha) andmed koos aadressi, kontaktandmete ja kehtivusajaga.

#### Päring id alusel

**URL**: `GET [base]/fhir/Location/[id]`

- [id]: ressursi SPD süsteemne numbriline id.

#### Otsing

Otsing nõuab vähemalt ühte põhifiltrit. Toetatud parameetrid:

- Põhifiltrid (vähemalt üks nõutud):
    - `organization`: asutuse kood.
    - `identifier`: ADS aadressi id.
    - `_id`: ressursi SPD süsteemne id.
    - `practitionerRole`: PractitionerRole id.
    - `addressCode`: aadressi kood.
- Lisafiltrid:
    - `licenseType`: tegevusloa liik (komaga eraldatud väärtused).
    - `status`: asukoha staatus. Toetatud on ainult väärtus `active`.

**URL**: `GET [base]/fhir/Location?organization=[code]`

#### Ajaloo päring

**URL**: `GET [base]/fhir/Location/[id]/_history/[version]`

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "Location",
    "id": "773",
    "meta": {
        "versionId": "2",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-location"
        ]
    },
    "extension": [
        {
            "url": "https://fhir.ee/spd/StructureDefinition/ee-tis-effective-period",
            "valuePeriod": {
                "start": "2023-03-27T00:00:00+00:00"
            }
        }
    ],
    "status": "active",
    "name": "Hiiu maakond, Hiiumaa vald, Käina alevik, Hiiu mnt 4/1",
    "address": {
        "extension": [
            {
                "url": "https://fhir.ee/base/StructureDefinition/ee-ads-adr-id",
                "valueCoding": {
                    "system": "https://fhir.ee/CodeSystem/ads-adr-id",
                    "code": "3449895"
                }
            },
            {
                "url": "https://fhir.ee/base/StructureDefinition/ee-ads-oid",
                "valueCoding": {
                    "system": "https://fhir.ee/CodeSystem/ads-oid",
                    "code": "ME01142691"
                }
            },
            {
                "url": "http://hl7.org/fhir/StructureDefinition/address-official",
                "valueBoolean": true
            }
        ],
        "use": "work",
        "type": "physical",
        "text": "Hiiu maakond, Hiiumaa vald, Käina alevik, Hiiu mnt 4/1",
        "country": "EE"
    },
    "managingOrganization": {
        "reference": "Organization/253"
    }
}
```

---

### HealthcareService ehk tervishoiuteenuse päring

Tagastab asutuse osutatava tervishoiuteenuse andmed koos teenuse tüübi, tegevusloa viite, asukohtade ja
kontaktandmetega.

#### Päring id alusel

**URL**: `GET [base]/fhir/HealthcareService/[id]`

- [id]: ressursi SPD süsteemne numbriline id.

#### Otsing

Otsing nõuab vähemalt ühte põhifiltrit. Toetatud parameetrid:

- Põhifiltrid (vähemalt üks nõutud):
    - `_id`: ressursi SPD süsteemne id.
    - `identifier`: teenuse identifikaator.
    - `service-type`: teenuse tüübi kood.
    - `organization`: asutuse kood.
    - `license`: tegevusloa kood.
    - `location`: asukoha (Location) id.
- Lisafilter:
    - `active`: tõeväärtus (`true`/`false`).

**URL**: `GET [base]/fhir/HealthcareService?organization=[code]`

#### Ajaloo päring

**URL**: `GET [base]/fhir/HealthcareService/[id]/_history/[version]`

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "HealthcareService",
    "id": "789",
    "meta": {
        "versionId": "2",
        "profile": [
            "https://fhir.ee/spd/StructureDefinition/ee-spd-healthcare-service"
        ]
    },
    "active": true,
    "providedBy": {
        "reference": "Organization/678"
    },
    "type": [
        {
            "coding": [
                {
                    "system": "https://fhir.ee/CodeSystem/medre-tegevusalaga-seotud-teenus",
                    "code": "T0001",
                    "display": "Üldarstiabi"
                }
            ]
        }
    ],
    "extension": [
        {
            "url": "https://fhir.ee/base/StructureDefinition/healthcareService-license",
            "valueReference": {
                "reference": "OrganizationLicense/321"
            }
        }
    ],
    "location": [
        {
            "reference": "Location/456"
        }
    ],
    "contact": [
        {
            "telecom": [
                {
                    "system": "phone",
                    "value": "+372 6171300"
                },
                {
                    "system": "email",
                    "value": "info@regionaalhaigla.ee"
                }
            ]
        }
    ]
}
```
