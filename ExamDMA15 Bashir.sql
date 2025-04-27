-- 1. 
ExchangeRates
Currency  Amount   Type     Country           
  USD     1.6940   Buy      Azerbaijan
  USD     1.7025   Sell     Azerbaijan
  EUR     1.8394   Buy      Azerbaijan
  EUR     1.8823   Sell     Azerbaijan
  GBP     2.1308   Buy      Azerbaijan
  GBP     2.1902   Sell     Azerbaijan
  RUB     0.0159   Buy      Azerbaijan
  RUB     0.0189   Sell     Azerbaijan
  USD     29.1202  Buy      Turkey
  USD     20.130   Sell     Turkey
  EUR     31.9207  Buy      Turkey
  EUR     32.421   Sell     Turkey
  GBP     36.8745  Buy      Turkey
  GBP     37.915   Sell     Turkey
  RUB     0.0159   Buy      Turkey
  RUB     0.0189   Sell     Turkey
  USD     15.1202  Buy      Albania  
  USD     15.130   Sell     Albania
  EUR     19.9207  Buy      Albania
  EUR     20.421   Sell     Albania
  GBP     18.8745  Buy      Albania
  GBP     19.915   Sell     Albania
  RUB     0.0159   Buy      Albania 
  RUB     0.0189   Sell     Albania
  
ExchangeRates cədvəlindəki məlumatlara əsasən məlumatları aşağıdakı şəkildə əks etdirən sorğunu yazın.     
country  USD(Buy)  USD(Sell)   EUR(Buy)  EUR(Sell)   GBP(Buy)   GBP(Sell)  RUB(Buy)  RUB(Sell)    
Albania  1.6940    1.7025      1.8394    1.8823      2.1308      2.1902    0.0159    0.0189
Turkey   29.1202   20.130      31.9207   32.421      36.8745     37.915    0.0159    0.0189
Albania  15.1202   15.130      19.9207   20.421      18.8745     19.915    0.0159    0.0189


Select ExchangeRates,
     Count(Case Type When 'Buy' Then Data End) Buy,
     Count(Case Type When 'Sell' Then Data End) Sell,
   From table
   Group By ExchangeRates;

-- 2. 

A 
 id   Name
100   Ceyhun
100   Ceyhun 
100   Ceyhun
200   Fuad
200   Fuad
300   Vüsal

B
id   amount
100   100 
100   150
200   300
400   600

Inner Join 
id    Name     amount
100   Ceyhun   100
100   Ceyhun   150
200   Fuad     300

Left Join
id     name     id   amount
100   Ceyhun   100   100 
100   Ceyhun   100   150
100   Ceyhun   null  null
200   Fuad     200   300
200   Fuad     200   300
300   Vüsal    null null
sol butun idler olacaq, qarsiliqli id olmayan null cixacaq

Right Join
id     name     id   amount
100    Ceyhun   100   100 
100    Ceyhun   100   150
200    Fuad     200   300
null   null     400   600


 sag butun id olacaq.qarsiliqli olmayan sollda null olacaq

Full Join
id     name     id   amount
100   Ceyhun    100  100
100   Ceyhun    100  150 
100   Ceyhun    100  null
200   Fuad      200 300
200   Fuad      200 300
300   Vüsal     null null
null  null      400  600
qarsiliqli melumatlar olan cixacaq olmayan null olcaq
