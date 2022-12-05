List<String> sehirList = new List<String> {'istanbul', 'ankara', 'bakü','sakarya','ankara', 'bakü','kırklareli','Ankara'};
System.debug('şehir listesi = '+ sehirList);

Set<String> ulkeSet = new  Set<String>{'türkiye', 'azerbeycan', 'USA','hollanda', 'türkiye', 'Türkiye','almanya', 'hollanda'};
System.debug('ülke listesi = '+ ulkeSet);

Set<String> sehirSet = new Set<String>{};
sehirSet.addAll(sehirList);
System.debug('listedeki şehirler sete eklendikten sonra = '+ sehirSet);

Map<Integer,String> plakalar = new Map<Integer,String> {};
plakalar.put(34, 'istanbul');
plakalar.put(41, 'kocaeli');
plakalar.put(41, 'izmit');
plakalar.put(06, 'ankara');
plakalar.put(35, 'izmir');
plakalar.put(36, 'izmir');
System.debug('plakalar map ==> '+ plakalar);

map<string, List<String>> yoreselYemekler = new map<string, List<String>>{};
List<String> y1 = new List<String>{'Baklava', 'Sarma', 'Kunefe'};
yoreselYemekler.put('Gaziantep', y1);
List<String> y2 = new List<String>{'İskender', 'Kestane şekeri', 'Cantik'};
yoreselYemekler.put('bursa', y2);
List<String> y3 = new List<String>{'Dolma', 'pilav', 'levengi'};
yoreselYemekler.put('baku', y3);

System.debug('yöresel yemekler ile map ==> '+ yoreselYemekler);
 