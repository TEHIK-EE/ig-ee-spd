/*CodeSystem: SERVICE_TYPE_TEST
Id: service-type-test
Title: "service type test cs"
Description: "TEST service-type CS"

* ^url = $service-type-test
* ^status = #draft
* ^content = #not-present
* ^experimental = false
* ^caseSensitive = false

/* #A001 "Eriarstiabi teenus"
* #A002 "Iseseisva füsioteraapia osutamine"
* #A003 "Iseseisva logopeedilise ravi osutamine"
* #A004 "Iseseisva psühholoogilise ravi osutamine"
* #A005 "Iseseisva õendusabi osutamine"
* #A006 "Iseseisva ämmaemandusabi osutamine"
* #A007 "Kiirabi teenus"
* #A008 "Perearsti nimistu alusel perearstiabi"

ValueSet: SERVICE_TYPE_VS
Id: service-type-test
Title: "service-type test vs"
Description: "TEST service-type VS"

* ^experimental = false
* ^url = $service-type-test-vs
* include codes from system $service-type-test
*/