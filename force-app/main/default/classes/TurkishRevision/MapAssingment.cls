public  class MapAssingment {
    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.

    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın..
    private static void degreeOfCities() {
        Map<String, List<Double>> cityOfHot = new Map<String, List<Double>>();
        List<Double> istanbulOfHot = new List<Double> {11.5 ,17.4 ,21.3 ,15.5 , 8.7 , 22.2, 23.3};
        cityOfHot.put('istanbul', istanbulOfHot);

        List<Double> ankaraOfHot = new List<Double> {12.5 ,13.4 ,11.3 ,10.5 , 9.7 , 12.2, 13.3};
        cityOfHot.put('ankara', ankaraOfHot);
        
        List<Double> sikagoOfHot = new List<Double> {11.5 ,12.4 ,11.3 ,15.2 , 10.7 , 14.2, 13.3};
        cityOfHot.put('şikago', istanbulOfHot);
        
        List<Double> teksasOfHot = new List<Double> {21.5 ,27.4 ,21.3 ,25.5 , 18.7 , 25.2, 27.3};
        cityOfHot.put('teksas', teksasOfHot);
        
        List<Double> adanaOfHot = new List<Double> {21.5 ,27.4 ,21.8 ,25.5 , 18.7 , 22.9, 23.7};
        cityOfHot.put('adana', adanaOfHot);
        


        
    }
      
}
