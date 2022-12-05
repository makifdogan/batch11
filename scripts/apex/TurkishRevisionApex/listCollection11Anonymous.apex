List<String> isimList = new List<String>();
isimList.add('Berna');
isimList.add('Fatma');
isimList.add('Rabia');
isimList.add('Samet');
isimList.add('Asli');

System.debug(isimList);
System.debug('index numarasi 2 olan isim get ile = ' + isimList.get(2));
System.debug('index numarasi 2 olan isim koseli parantezle = ' + isimList[2]);

Boolean check = isimList.contains('Zynet');
System.debug('Zynet ismi listemizde var mi? = ' + check);

Boolean check2 = isimList.contains('Samet');
System.debug('Samet ismi listemizde var mi? = ' + check2);

string silinenIsim = isimList.remove(0);
System.debug('silinen isim = ' + silinenIsim);
System.debug('listenin son hali(sort metodundan once) = ' + isimList);

System.debug('listemdeki isim sayisi = ' + isimList.size());

isimList.sort();
System.debug('sort metodundan sonra = ' + isimList);

List<String> isimList2 = new List<String>{'Ziynet', 'Asli', 'Yusuf', 'Samet', 'Serpil'};
ListCollection11.printListEachItem(isimList2);