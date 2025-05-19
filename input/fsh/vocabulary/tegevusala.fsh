CodeSystem: TEGEVUSALA
Id: tegevusala
Title: "tegevusala test"
Description: "TEST tegevusala"

* ^url = $tegevusala
* ^status = #draft
* ^content = #fragment
* ^experimental = false

* #A001 "Eriarstiabi teenus"
* #A002 "Iseseisva füsioteraapia osutamine"
* #A003 "Iseseisva logopeedilise ravi osutamine"
* #A004 "Iseseisva psühholoogilise ravi osutamine"
* #A005 "Iseseisva õendusabi osutamine"
* #A006 "Iseseisva ämmaemandusabi osutamine"
* #A007 "Kiirabi teenus"
* #A008 "Perearsti nimistu alusel perearstiabi"

ValueSet: TEGEVUSALA_VS
Id: tegevusala-vs
Title: "tegevusala test"
Description: "TEST tegevusala"

* ^experimental = false
* ^url = $tegevusala-vs
* include codes from system $tegevusala