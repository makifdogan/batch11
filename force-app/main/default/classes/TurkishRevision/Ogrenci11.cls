public  class Ogrenci11 {
    public static integer ogrencisayisi = 0 ;
    //static yapmazsak her seferinde sıfırdan başlar 
    public Ogrenci11() {
        ogrencisayisi++;
        System.debug('yeni bir kayıt yapıldı. Ogrenci sayısı = '+ogrencisayisi);
           
    }
    public String firstName;
    public String lastName;
    private String schoolName = 'Dream School';
    public String className;
    public string languages;
    public Boolean art ;
    public Boolean sport;
    public integer ingGrade;
    public Integer mathGrade;
    public Integer fenGrade;

    public Ogrenci11(String fName, String lName, Integer ingNot){
        this();
        this.firstName = fName ;
        this.lastName = lName ;
        this.ingGrade = ingNot ;
    }


}
