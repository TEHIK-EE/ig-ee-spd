## API kirjeldus

Käesolevas juhendis kirjeldatakse HCERT teenuse poolt toetatud FHIR otspunktid ja operatsioonid.
Toodud näidispäringud ja näidisvastused ei kajasta reaalseid andmeid aga vastavad oodatud/toetatud ressursi struktuurile.

> API kasutamise juhised ja näidis Postman kollektsioon on leitav [siit](dev.html).


### PractitionerRole ehk töötaja rolli pärimine

Süsteem võtab vastu töötaja rolli päringu ja tagastab isiku ja töösuhte andmed koos kontaktandmetega.
Kui isiku andmed puuduvad SPD-s, siis tehakse taustas päringud MEDRE-sse ja TÖR-i.

#### Päring id alusel

**URL**: `GET [base]/fhir/PractitionerRole/{{PRACTITIONER_ID_CODE}}-{{ORGANIZATION_REG_CODE}}`

- PRACTITIONER_ID_CODE: arsti isikukood
- ORGANIZATION_REG_CODE: arsti asutuse kood

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "11111111111-70009770",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/11111111111/_history/1"
    },
    "organization": {
        "reference": "Organization/70009770/_history/1"
    }
}
```

#### Päring identifikaatori alusel

**URL**: `GET [base]/fhir/PractitionerRole?identifier=https://fhir.ee/sid/pid/est/ni%7C{{PRACTITIONER_ID_CODE}}&organization=Organization/{{ORGANIZATION_REG_CODE}}`

- PRACTITIONER_ID_CODE: arsti isikukood
- ORGANIZATION_REG_CODE: arsti asutuse kood

#### Vastus

- **HTTP status**: 200 OK


```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "11111111111-70009770",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/11111111111/_history/1"
    },
    "organization": {
        "reference": "Organization/70009770/_history/1"
    }
}
```

#### Päring arsti koodi alusel

**URL**: `GET [base]/fhir/PractitionerRole?identifier=https://fhir.ee/sid/pro/est/pho%7C{{PRACTITIONER_REG_CODE}}`

- PRACTITIONER_REG_CODE: arsti TAM kood, nt. D00001

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "11111111111-70009770",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/11111111111/_history/1"
    },
    "organization": {
        "reference": "Organization/70009770/_history/1"
    }
}
```


#### Ajaloo päring

- PRACTITIONER_ID_CODE: arsti isikukood
- ORGANIZATION_REG_CODE: arsti asutuse kood
- VERSION: ressursi versioon

**URL**: `GET [base]/fhir/PractitionerRole/{{PRACTITIONER_ID_CODE}}-{{ORGANIZATION_REG_CODE}}/_history/{{VERSION}}`

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "PractitionerRole",
    "id": "11111111111-70009770",
    "meta": {
        "versionId": "1",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-practitioner-role"
        ]
    },
    "practitioner": {
        "reference": "Practitioner/11111111111/_history/1"
    },
    "organization": {
        "reference": "Organization/70009770/_history/1"
    }
}
```

### Practitioner ehk teenusosutaja isiku päring

Võtab vastu teenuseosutaja isiku päringu ja tagastab isiku andmed koos eriala ja/või ameti andmetega.
Kui isiku andmed puuduvad SPD-s, siis tehakse taustas päringud MEDRE-sse ja TÖR-i.

#### Päring

- PRACTITIONER_ID_CODE: arsti isikukood

**URL**: `GET [base]/fhir/Practitioner/{{PRACTITIONER_ID_CODE}}`

#### Ajaloo päring

On võimalik pärida varajasemat versiooni ressursist kasutades ajaloo päringut.

- PRACTITIONER_ID_CODE: arsti isikukood
- VERSION: ressursi versioon

**URL**: `GET [base]/fhir/Practitioner/{{PRACTITIONER_ID_CODE}}/_history/{{VERSION}}`

#### Vastus


```
HTTP/1.1 200 OK

{
    "resourceType": "Practitioner",
    "id": "37907242744",
    "meta": {
        "versionId": "34",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-practitioner"
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

### Organization ehk asutuse päring

Süsteem võtab vastu asutuse päringu ja tagastab päringu vastuses asutuse ja tegevuslubade andmed.
Kui asutuse andmed puuduvad SPD-s, siis tehakse taustas asutuse päring MEDRE-sse ja Ravimikäitlejate andmekogusse.

#### Päring

- ORGANIZATION_REG_CODE: asutuse kood

**URL**: `GET [base]/fhir/Organization/{{ORGANIZATION_REG_CODE}}`

#### Ajaloo päring

- ORGANIZATION_REG_CODE: asutuse kood
- VERSION: ressursi versioon

**URL**: `GET [base]/fhir/Organization/{{ORGANIZATION_REG_CODE}}/_history/{{VERSION}}`

#### Vastus

- **HTTP status**: 200 OK

```
HTTP/1.1 200 OK

{
    "resourceType": "Organization",
    "id": "90006399",
    "meta": {
        "versionId": "71",
        "profile": [
            "https://fhir.ee/base/StructureDefinition/ee-organization"
        ]
    },
    "identifier": [
        {
            "system": "https://fhir.ee/sid/org/est/br",
            "value": "90006399"
        }
    ],
    "active": true,
    "type": [
        {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/organization-type",
                    "code": "prov"
                }
            ]
        }
    ],
    "name": "sihtasutus Põhja-Eesti Regionaalhaigla",
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
