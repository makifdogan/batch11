Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Netherland', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

System.debug(mapCntCurrency);

String IndiaCurrency = mapCntCurrency.get('India');
String country = 'Turkiye';
String TurkeyCurrency = mapCntCurrency.get(country);
System.debug('India currency is '+ IndiaCurrency);
System.debug(country+ ' currency is '+ TurkeyCurrency);

Set<String> countrySet = mapCntCurrency.keySet();
System.debug('country set ====> '+ countrySet);
List<String> currencyList = mapCntCurrency.values();
System.debug('currency list ===> '+currencyLİst);

For(String eachKey : countrySet){
    System.debug('*each country is '+ eachKey);
    String eachCurrency = mapCntCurrency.get(eachKey);
    System.debug('* each currency is '+ eachCurrency);
    System.debug('*** country is '+eachKey + 'its currency is '+ eachCurrency);






}
