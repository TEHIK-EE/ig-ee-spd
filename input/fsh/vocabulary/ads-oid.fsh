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

ValueSet: EEAdsAdrId
Id: ads-adr-id
Title: "ADS AdrId"
Description: "Address identifiers in the Estonian Address."
* ^experimental = true
* include codes from system EEAdsAdrId

CodeSystem: EEAdsOid
Id: ads-oid
Title: "ADS Oid"
Description: "Address objects in the Estonian Address System."
* ^experimental = true
* ^caseSensitive = false
* ^content = #fragment
* #ME01648705 "Ida-Viru maakond, Narva linn, Kalda tn 9"
* #ME03306102 "Harju maakond, Tallinn, Mustamäe linnaosa, A. H. Tammsaare tee 104a"
//* #ME03379409 "Harju maakond, Tallinn, Lasnamäe linnaosa, Valukoja tn 10"
//* #AY03658881 "Tartu maakond, Tartu linn"
//* #EE00752500 "Tartu maakond, Tartu linn, Tartu linn, K. Veeberi tn 4"
//* #AY00008560 "Tartu maakond, Tartu linn, Tähtvere küla"

ValueSet: EEAdsOid
Id: ads-oid
Title: "ADS Oid"
Description: "Address objects in the Estonian Address System."
* ^experimental = true
* include codes from system EEAdsOid