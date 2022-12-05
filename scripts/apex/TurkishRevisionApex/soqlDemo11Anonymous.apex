integer deger = SoqlDemo11.accountIndustry();
System.debug('recordların sayısı = '+ deger );
integer deger = SoqlDemo11.accountIndustry('Education');
System.debug('recordların sayısı = '+ deger );
integer deger = SoqlDemo11.accountIndustry('Energy');
System.debug('recordların sayısı = '+ deger );
SoqlDemo11.accountWithContacts();
SoqlDemo11.accountWithContacts('Education');
