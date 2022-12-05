// SORU 18 : Plaka ve o plakaya ait şehir isimlerinin olduğu bir Map<Integer,String> oluşturalım.
// 	1.İstanbul(34),Bursa(16),İzmir(35),Konya(42),Gaziantep(27) şehirlerini plaka numaralarıyla mapimize ekleyelim.
// 	2.Mapimizde 34(İstanbul) ve 61(Trabzon) ait plakaların olup olmadığını kontrol edelim.
// 	3.Mapimizin eleman sayısnı system.debug ile yazdıralım.
// 	4.16 nolu plakayı mapimizden çıkaralım.
// 	4.Mapimizdeki plakalardan oluşan yeni bir set oluşturalım.
// 	5.Mapimizdeki şehirlerden oluşan yeni bir list oluşturalım.
// 	6.Plaka ve şehir ismini aynı system.debug içerisinde kullanalım
 map<Integer,String> sehirPlaka = new map<Integer,String> {34=> 'istanbul',+16=> 'bursa', 35 =>'izmir',42=>'konya',27=>'gaziantep'};
 System.debug(sehirPlaka);
 System.debug('mapte istanbul plakası var mı ? '+ sehirPlaka.containsKey(34));
  System.debug('mapte trabzon plakası var mı ? '+ sehirPlaka.containsKey(61));
  System.debug('mapimizin eleman sayısı '+sehirplaka.size());
  sehirPlaka.remove(16);
  System.debug(sehirplaka);
  Set<Integer> plakaSet = sehirPlaka.keySet();
  System.debug('plakalar ' + plakaSet);
  
  List<String> sehirList = sehirPlaka.values();
  System.debug('Şehirler '+sehirList);
  
  for(integer eachPlaka: plakaSet){
    string eachsehir = sehirPlaka.get(eachPlaka) ;
    System.debug(eachPlaka + ' plakalı şehrimiz '+ eachsehir );

  }