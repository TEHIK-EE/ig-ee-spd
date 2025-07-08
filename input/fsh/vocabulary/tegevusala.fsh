CodeSystem: TEGEVUSALA
Id: tegevusala
Title: "tegevusala test cs"
Description: "TEST tegevusala CS"

* ^url = $tegevusala
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
*/
ValueSet: TEGEVUSALA_VS
Id: tegevusala
Title: "tegevusala test vs"
Description: "TEST tegevusala VS"

* ^experimental = false
* ^url = $tegevusala-vs
* include codes from system $tegevusala