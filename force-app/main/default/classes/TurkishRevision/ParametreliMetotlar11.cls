public class ParametreliMetotlar11 {
    // bu method parametre olara kstring bir deger alsın.bu stringin karakter sayısını RETURN etsin.
    public integer  uzunluk(String text){
        integer uzn = text.length();
        return uzn ;
    }
    // bu metot parametre olarak integer bir deger alsın. bu integer deger kaç rakamdan oluştuğunu RETURN etsin .
    public integer rakamSayisi(integer sayi){
        string strSy = String.valueOf(sayi);
        //return strSy.length();
        Integer rkmSys = strSy.length();
        return rkmSys ;   
    }
    // 2 integer sayının toplamını return etsin 
    public Integer sum(Integer a , Integer b){
        return a+b ;
    }
    // 2 integer sayının farkını return etsin 
    public Integer cikarma(Integer a , Integer b){
        return a-b ; 
    }
    // kitap , fiyatı adet şeklinde 3 parametreli metot yazın. bu method bize bu kitap ile ilgili ödenecek miktarı yazdırın 
    public void asd(string kitap, decimal fiyat,  integer adet){
        Decimal toplamFiyat = fiyat*adet;
        System.debug(kitap +' kitabından '+ adet + ' adet aldınız. '+ 'ödemeniz gereken miktar = '+ toplamFiyat);
    }  
}
