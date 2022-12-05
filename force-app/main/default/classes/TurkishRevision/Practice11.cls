public class Practice11 {
    // static bir ögrenci11 boş listesi oluşturalım. 
    //bir method yazalım bu method 3 tane ögrenci11 clasına ait obje(instance)üretsin ve bunu static listeye eklesin ...
    public static List<Ogrenci11> ogrenciList = new List<Ogrenci11>();

    public static void ogrenciler() {
        Ogrenci11 s1 = new Ogrenci11('lisa', 'fire', 95);
       
        ogrenciList.add(s1);
        Ogrenci11 s2 = new Ogrenci11('Joseph', 'Fire', 85);
        ogrenciList.add(s2);
               
    }
    
}
