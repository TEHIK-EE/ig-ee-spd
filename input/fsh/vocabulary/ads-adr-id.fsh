CodeSystem: EEAdsAdrId
Id: ads-adr-id
Title: "ADS AdrId"
Description: "Address identifiers in the Estonian Address." 
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #2881142 "Ida-Viru maakond, Narva linn, Kalda tn 9"
* #2120589 "Harju maakond, Tallinn, Mustamäe linnaosa, A. H. Tammsaare tee 104a"
//* #2280361 "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
//* #3020414 "Tartu maakond, Tartu linn"
//* #3066282 "Tartu maakond, Tartu linn, Tartu linn, K. Veeberi tn 4"
//* #3020415 "Tartu maakond, Tartu linn, Tähtvere küla"

ValueSet: EEAdsAdrId_VS
Id: ads-adr-id
Title: "ADS AdrId"
Description: "Address identifiers in the Estonian Address."
* ^experimental = true
* include codes from system EEAdsAdrId