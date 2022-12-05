Ogrenci11 student1 = new Ogrenci11();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className = '6E';
student1.languages = 'English';
student1.art = true ;
student1.sport = false ;
student1.ingGrade = 95;
student1.mathGrade = 92;
student1.fenGrade = 90;
System.debug(student1);
Ogrenci11 student2 = new Ogrenci11();
student2.firstName = 'Akif';
student2.lastName = 'doğan';
student2.className = 'Batch11';
student2.languages = 'türkçe';
student2.art = false ;
student2.sport = true ;
student2.ingGrade = 50;
student2.mathGrade = 99;
student2.fenGrade = 60;
System.debug(student2);



List<Ogrenci11> studentList= new List<Ogrenci11>();
studentList.add(student1);
studentList.add(student2);

System.debug('class listesi = '+ studentList);
System.debug('====For Each döngüsü====');
for (ogrenci11 eleman : studentList) {
    System.debug(eleman.firstName);

}

Ogrenci11 s1 = new Ogrenci11('lisa', 'fire', 95);
System.debug('s1 = '+s1);

Ogrenci11 s2 = new Ogrenci11('Joseph', 'Fire', 85);
System.debug('s2 = '+s2);

