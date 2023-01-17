map<string, country_code__c> allCountryCodes = country_code__c.getAll();
System.debug('all country codes => '+ allCountryCodes);
for (string eachContry : allCountryCodes.keyset()) {
    System.debug('Country is  '+ eachContry + ' its Code is '+ allCountryCodes.get(eachContry).code__C);
}