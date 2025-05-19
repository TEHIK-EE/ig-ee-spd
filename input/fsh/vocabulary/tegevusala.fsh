CodeSystem: TEGEVUSALA
Id: tegevusala
Title: "tegevusala test"
Description: "TEST tegevusala"

* ^url = $tegevusala
* ^status = #draft
* ^content = #fragment
* ^experimental = false

* #A001 "Statsionaarsed pulmonoloogiateenused"
* #A002 "Statsionaarsed psühhiaatriateenused"
* #A003 "ambulatoorsed psühhiaatriateenused"
* #A004 "psühhiaatria päevaraviteenused"
* #A005 "radioloogiateenused"
* #A006 "Statsionaarsed neuroloogiateenused"
* #A007 "ambulatoorsed taastusravi ja füsiaatriateenused"

ValueSet: TEGEVUSALA_VS
Id: tegevusala-vs
Title: "tegevusala test"
Description: "TEST tegevusala"

* ^experimental = false
* ^url = $tegevusala-vs
* include codes from system $tegevusala